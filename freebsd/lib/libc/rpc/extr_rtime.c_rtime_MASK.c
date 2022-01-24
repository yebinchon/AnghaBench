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
typedef  int /*<<< orphan*/  thetime ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct servent {int /*<<< orphan*/  s_port; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  from ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ EINTR ; 
 scalar_t__ EIO ; 
 scalar_t__ ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int SOCK_DGRAM ; 
 int SOCK_STREAM ; 
 scalar_t__ TOFFSET ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int) ; 
 int FUNC3 (int,char*,int) ; 
 int FUNC4 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int FUNC7 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ errno ; 
 struct servent* FUNC10 (char*,char*) ; 
 unsigned long FUNC11 (unsigned long) ; 

int
FUNC12(struct sockaddr_in *addrp, struct timeval *timep,
    struct timeval *timeout)
{
	int s;
	fd_set readfds;
	int res;
	unsigned long thetime;
	struct sockaddr_in from;
	socklen_t fromlen;
	int type;
	struct servent *serv;

	if (timeout == NULL) {
		type = SOCK_STREAM;
	} else {
		type = SOCK_DGRAM;
	}
	s = FUNC8(AF_INET, type, 0);
	if (s < 0) {
		return(-1);
	}
	addrp->sin_family = AF_INET;

	/* TCP and UDP port are the same in this case */
	if ((serv = FUNC10("time", "tcp")) == NULL) {
		return(-1);
	}

	addrp->sin_port = serv->s_port;

	if (type == SOCK_DGRAM) {
		res = FUNC7(s, (char *)&thetime, sizeof(thetime), 0,
			     (struct sockaddr *)addrp, sizeof(*addrp));
		if (res < 0) {
			FUNC9(s);
			return(-1);
		}
		do {
			FUNC1(&readfds);
			FUNC0(s, &readfds);
			res = FUNC6(FUNC5(), &readfds,
				     (fd_set *)NULL, (fd_set *)NULL, timeout);
		} while (res < 0 && errno == EINTR);
		if (res <= 0) {
			if (res == 0) {
				errno = ETIMEDOUT;
			}
			FUNC9(s);
			return(-1);
		}
		fromlen = sizeof(from);
		res = FUNC4(s, (char *)&thetime, sizeof(thetime), 0,
			       (struct sockaddr *)&from, &fromlen);
		FUNC9(s);
		if (res < 0) {
			return(-1);
		}
	} else {
		if (FUNC2(s, (struct sockaddr *)addrp, sizeof(*addrp)) < 0) {
			FUNC9(s);
			return(-1);
		}
		res = FUNC3(s, (char *)&thetime, sizeof(thetime));
		FUNC9(s);
		if (res < 0) {
			return(-1);
		}
	}
	if (res != sizeof(thetime)) {
		errno = EIO;
		return(-1);
	}
	thetime = FUNC11(thetime);
	timep->tv_sec = thetime - TOFFSET;
	timep->tv_usec = 0;
	return(0);
}