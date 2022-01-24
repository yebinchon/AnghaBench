#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct addrinfo {int ai_addrlen; int /*<<< orphan*/  ai_addr; struct addrinfo* ai_next; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
struct server {struct server* next_server; scalar_t__ event_time; struct addrinfo srcadr; } ;
typedef  struct addrinfo sockaddr_u ;
typedef  int /*<<< orphan*/  service ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int EAI_AGAIN ; 
 int EAI_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo) ; 
 int /*<<< orphan*/  ai_fam_templ ; 
 scalar_t__ debug ; 
 struct server* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct addrinfo*) ; 
 char* FUNC6 (int) ; 
 int FUNC7 (char*,char*,struct addrinfo*,struct addrinfo**) ; 
 scalar_t__ FUNC8 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC9 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC12 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 scalar_t__ sys_numservers ; 
 struct server* sys_servers ; 

__attribute__((used)) static void
FUNC14(
	char *serv
	)
{
	register struct server *server;
	/* Address infos structure to store result of getaddrinfo */
	struct addrinfo *addrResult, *ptr;
	/* Address infos structure to store hints for getaddrinfo */
	struct addrinfo hints;
	/* Error variable for getaddrinfo */
	int error;
	/* Service name */
	char service[5];
	sockaddr_u addr;

	FUNC13(service, "ntp", sizeof(service));

	/* Get host address. Looking for UDP datagram connection. */
	FUNC1(hints);
	hints.ai_family = ai_fam_templ;
	hints.ai_socktype = SOCK_DGRAM;

#ifdef DEBUG
	if (debug)
		printf("Looking for host %s and service %s\n", serv, service);
#endif

	error = FUNC7(serv, service, &hints, &addrResult);
	if (error != 0) {
		/* Conduct more refined error analysis */
		if (error == EAI_FAIL || error == EAI_AGAIN){
			/* Name server is unusable. Exit after failing on the
			   first server, in order to shorten the timeout caused
			   by waiting for resolution of several servers */
			FUNC4(stderr, "Exiting, name server cannot be used: %s (%d)",
				FUNC6(error), error);
			FUNC10(LOG_ERR, "name server cannot be used: %s (%d)",
				FUNC6(error), error);
			FUNC3(1);
		}
		FUNC4(stderr, "Error resolving %s: %s (%d)\n", serv,
			FUNC6(error), error);
		FUNC10(LOG_ERR, "Can't find host %s: %s (%d)", serv,
			FUNC6(error), error);
		return;
	}
#ifdef DEBUG
	if (debug) {
		ZERO(addr);
		INSIST(addrResult->ai_addrlen <= sizeof(addr));
		memcpy(&addr, addrResult->ai_addr, addrResult->ai_addrlen);
		fprintf(stderr, "host found : %s\n", stohost(&addr));
	}
#endif

	/* We must get all returned server in case the first one fails */
	for (ptr = addrResult; ptr != NULL; ptr = ptr->ai_next) {
		FUNC1(addr);
		FUNC0(ptr->ai_addrlen <= sizeof(addr));
		FUNC9(&addr, ptr->ai_addr, ptr->ai_addrlen);
		if (FUNC8(&addr)) {
			server = FUNC2(sizeof(*server));
			FUNC9(&server->srcadr, ptr->ai_addr, ptr->ai_addrlen);
			server->event_time = ++sys_numservers;
			if (sys_servers == NULL)
				sys_servers = server;
			else {
				struct server *sp;

				for (sp = sys_servers; sp->next_server != NULL;
				     sp = sp->next_server)
					/* empty */;
				sp->next_server = server;
			}
		}
	}

	FUNC5(addrResult);
}