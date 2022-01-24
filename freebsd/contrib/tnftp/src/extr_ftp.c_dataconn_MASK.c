#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tos ;
struct timeval {scalar_t__ tv_sec; int tv_usec; } ;
struct sockinet {scalar_t__ su_family; int /*<<< orphan*/  si_su; } ;
struct sockaddr {int dummy; } ;
struct pollfd {int fd; int /*<<< orphan*/  events; } ;
typedef  int /*<<< orphan*/  socklen_t ;
struct TYPE_2__ {int /*<<< orphan*/  su_len; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int IPTOS_THROUGHPUT ; 
 int /*<<< orphan*/  IP_TOS ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  POLLIN ; 
 int FUNC1 (int,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int data ; 
 scalar_t__ errno ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int,char const*) ; 
 int FUNC5 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct timeval*,int /*<<< orphan*/ *) ; 
 TYPE_1__ myctladdr ; 
 scalar_t__ passivemode ; 
 scalar_t__ quit_time ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct timeval*,struct timeval*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

FILE *
FUNC11(const char *lmode)
{
	struct sockinet	from;
	int		s, flags, rv, timeout;
	struct timeval	endtime, now, td;
	struct pollfd	pfd[1];
	socklen_t	fromlen;

	if (passivemode)	/* passive data connection */
		return (FUNC4(data, lmode));

				/* active mode data connection */

	if ((flags = FUNC3(data, F_GETFL, 0)) == -1)
		goto dataconn_failed;		/* get current socket flags  */
	if (FUNC3(data, F_SETFL, flags | O_NONBLOCK) == -1)
		goto dataconn_failed;		/* set non-blocking connect */

		/* NOTE: we now must restore socket flags on successful exit */

				/* limit time waiting on listening socket */
	pfd[0].fd = data;
	pfd[0].events = POLLIN;
	(void)FUNC6(&endtime, NULL);	/* determine end time */
	endtime.tv_sec += (quit_time > 0) ? quit_time: 60;
						/* without -q, default to 60s */
	do {
		(void)FUNC6(&now, NULL);
		FUNC8(&endtime, &now, &td);
		timeout = td.tv_sec * 1000 + td.tv_usec/1000;
		if (timeout < 0)
			timeout = 0;
		rv = FUNC5(pfd, 1, timeout);
	} while (rv == -1 && errno == EINTR);	/* loop until poll ! EINTR */
	if (rv == -1) {
		FUNC9("Can't poll waiting before accept");
		goto dataconn_failed;
	}
	if (rv == 0) {
		FUNC10("Poll timeout waiting before accept");
		goto dataconn_failed;
	}

				/* (non-blocking) accept the connection */
	fromlen = myctladdr.su_len;
	do {
		s = FUNC1(data, (struct sockaddr *) &from.si_su, &fromlen);
	} while (s == -1 && errno == EINTR);	/* loop until accept ! EINTR */
	if (s == -1) {
		FUNC9("Can't accept data connection");
		goto dataconn_failed;
	}

	(void)FUNC2(data);
	data = s;
	if (FUNC3(data, F_SETFL, flags) == -1)	/* restore socket flags */
		goto dataconn_failed;

#ifdef IPTOS_THROUGHPUT
	if (from.su_family == AF_INET) {
		int tos = IPTOS_THROUGHPUT;
		if (setsockopt(s, IPPROTO_IP, IP_TOS,
				(void *)&tos, sizeof(tos)) == -1) {
			DWARN("setsockopt %s (ignored)", "IPTOS_THROUGHPUT");
		}
	}
#endif
	return (FUNC4(data, lmode));

 dataconn_failed:
	(void)FUNC2(data);
	data = -1;
	return (NULL);
}