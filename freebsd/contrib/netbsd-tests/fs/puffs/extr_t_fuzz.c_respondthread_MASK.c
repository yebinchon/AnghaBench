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
struct puffs_req {scalar_t__ preq_rv; } ;
struct pollfd {int fd; scalar_t__ revents; int /*<<< orphan*/  events; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  POLLIN ; 
 int PUFFS_MSG_MAXSIZE ; 
 int /*<<< orphan*/  dacv ; 
 int dafd ; 
 int /*<<< orphan*/  damtx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct pollfd*,int,int) ; 
 scalar_t__ FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 

__attribute__((used)) static void *
FUNC6(void *arg)
{
	char buf[PUFFS_MSG_MAXSIZE];
	struct puffs_req *preq = (void *)buf;
	struct pollfd pfd;
	ssize_t n;

	FUNC1(&damtx);
	for (;;) {
		while (dafd == -1)
			FUNC0(&dacv, &damtx);

		while (dafd != -1) {
			FUNC2(&damtx);
			pfd.fd = dafd;
			pfd.events = POLLIN;
			pfd.revents = 0;
			if (FUNC3(&pfd, 1, 10) == 0) {
				FUNC1(&damtx);
				continue;
			}
			n = FUNC4(dafd, buf, sizeof(buf));
			if (n <= 0) {
				FUNC1(&damtx);
				break;
			}

			/* just say it was succesful */
			preq->preq_rv = 0;
			FUNC5(dafd, buf, n);
			FUNC1(&damtx);
		}
	}

	return NULL;
}