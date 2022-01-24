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
typedef  int /*<<< orphan*/  nbuff ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int BUFFERLEN ; 
#define  EINTR 130 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_ERR ; 
#define  R_IO_ERROR 129 
#define  R_MORE 128 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,...) ; 
 int FUNC5 (int,char*,int*) ; 
 int FUNC6 (int,char*) ; 
 int errno ; 
 int lfd ; 
 int nfd ; 
 int FUNC7 (int,char*,int) ; 
 int FUNC8 (int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  terminate ; 

void
FUNC11()
{
	char nbuff[BUFFERLEN];
	char buff[BUFFERLEN];
	fd_set mrd, rd;
	int maxfd;
	int inbuf;
	int n1;
	int left;

	FUNC2(&mrd);
	FUNC1(lfd, &mrd);
	FUNC1(nfd, &mrd);
	maxfd = nfd;
	if (lfd > maxfd)
		maxfd = lfd;
	FUNC4(2, "nfd %d lfd %d maxfd %d\n", nfd, lfd, maxfd);

	inbuf = 0;
	/*
	 * A threaded approach to this loop would have one thread
	 * work on reading lfd (only) all the time and another thread
	 * working on reading nfd all the time.
	 */
	while (!terminate) {
		int n;

		rd = mrd;

		n = FUNC9(maxfd + 1, &rd, NULL, NULL, NULL);
		if (n < 0) {
			switch (errno)
			{
			case EINTR :
				continue;
			default :
				FUNC10(LOG_ERR, "select error: %m");
				FUNC4(1, "select error: %s\n", FUNC3(errno));
				return;
			}
		}

		if (FUNC0(lfd, &rd)) {
			n1 = FUNC7(lfd, buff+inbuf, BUFFERLEN-inbuf);

			FUNC4(3, "read(K):%d\n", n1);

			if (n1 <= 0) {
				FUNC10(LOG_ERR, "read error (k-header): %m");
				FUNC4(1, "read error (k-header): %s\n",
				      FUNC3(errno));
				return;
			}

			left = 0;

			switch (FUNC5(n1, buff, &left))
			{
			case R_IO_ERROR :
				return;
			case R_MORE :
				inbuf += left;
				break;
			default :
				inbuf = 0;
				break;
			}
		}

		if (FUNC0(nfd, &rd)) {
			n1 = FUNC8(nfd, nbuff, sizeof(nbuff), 0);

			FUNC4(3, "read(N):%d\n", n1);

			if (n1 <= 0) {
				FUNC10(LOG_ERR, "read error (n-header): %m");
				FUNC4(1, "read error (n-header): %s\n",
				      FUNC3(errno));
				return;
			}

			switch (FUNC6(n1, nbuff))
			{
			case R_IO_ERROR :
				return;
			default :
				break;
			}
		}
	}
}