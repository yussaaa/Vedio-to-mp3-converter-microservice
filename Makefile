.PHONY: apply delete

apply:
	kubectl apply -f src/auth/manifest/
	kubectl apply -f src/rabbit/manifest/.
	kubectl apply -f src/converter/manifest/.
	kubectl apply -f src/notification/manifest/.
	kubectl apply -f src/gateway/manifest/.



delete:
	kubectl delete -f src/auth/manifest/.
	kubectl delete -f src/converter/manifest/.
	kubectl delete -f src/rabbit/manifest/.
	kubectl delete -f src/gateway/manifest/.
	kubectl delete -f src/notification/manifest/.

