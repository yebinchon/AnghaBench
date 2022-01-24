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
struct service_connection {int dummy; } ;
struct service {scalar_t__ s_magic; int /*<<< orphan*/  s_flags; int /*<<< orphan*/  s_name; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FD_SETSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ SERVICE_MAGIC ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ errno ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (struct service*,int,int /*<<< orphan*/ *) ; 
 struct service_connection* FUNC9 (struct service*) ; 
 int /*<<< orphan*/  FUNC10 (struct service_connection*) ; 
 struct service_connection* FUNC11 (struct service_connection*) ; 
 int /*<<< orphan*/  FUNC12 (struct service*,struct service_connection*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 

void
FUNC14(struct service *service, int sock, int procfd)
{
	struct service_connection *sconn, *sconntmp;
	fd_set fds;
	int maxfd, nfds;

	FUNC4(service != NULL);
	FUNC4(service->s_magic == SERVICE_MAGIC);
	FUNC13("%s", service->s_name);
	FUNC7(sock, procfd, service->s_flags);

	if (FUNC8(service, sock, NULL) == NULL)
		FUNC2(1);

	for (;;) {
		FUNC1(&fds);
		maxfd = -1;
		for (sconn = FUNC9(service); sconn != NULL;
		    sconn = FUNC11(sconn)) {
			maxfd = FUNC5(&fds, maxfd,
			    FUNC10(sconn));
		}

		FUNC4(maxfd >= 0);
		FUNC4(maxfd + 1 <= (int)FD_SETSIZE);
		nfds = FUNC6(maxfd + 1, &fds, NULL, NULL, NULL);
		if (nfds < 0) {
			if (errno != EINTR)
				FUNC2(1);
			continue;
		} else if (nfds == 0) {
			/* Timeout. */
			FUNC3();
		}

		for (sconn = FUNC9(service); sconn != NULL;
		    sconn = sconntmp) {
			/*
			 * Prepare for connection to be removed from the list
			 * on failure.
			 */
			sconntmp = FUNC11(sconn);
			if (FUNC0(FUNC10(sconn), &fds))
				FUNC12(service, sconn);
		}
		if (FUNC9(service) == NULL) {
			/*
			 * No connections left, exiting.
			 */
			break;
		}
	}

	FUNC2(0);
}