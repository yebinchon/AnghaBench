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
typedef  int /*<<< orphan*/  thisaddr_ss ;
typedef  int /*<<< orphan*/  thataddr_ss ;
struct sockaddr_storage {int dummy; } ;
typedef  struct sockaddr sockaddr ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  one ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  erraddr_ss ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int BUFSIZ ; 
 scalar_t__ EINTR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FD_SETSIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_DEBUG ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 scalar_t__ FUNC6 (int,struct sockaddr*,int*) ; 
 scalar_t__ FUNC7 (int,struct sockaddr*,int*) ; 
 scalar_t__ FUNC8 (int,int) ; 
 scalar_t__ FUNC9 (int,int) ; 
 int FUNC10 (int,char*,int) ; 
 int FUNC11 (int,char*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int,char*,int) ; 
 int FUNC14 (int,int) ; 
 int FUNC15 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,char*,int) ; 
 scalar_t__ sock_debug ; 
 int /*<<< orphan*/  FUNC18 (struct sockaddr*) ; 
 int FUNC19 (char*) ; 
 int FUNC20 (int,struct sockaddr*,struct sockaddr*,char const*,char const*,char const*,size_t,char const*) ; 
 int /*<<< orphan*/  FUNC21 (char*,...) ; 
 int /*<<< orphan*/  FUNC22 (char*,...) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC24 (int s, int errsock,
       const char *hostname, const char *local_user, const char *remote_user,
       const char *cmd, size_t cmd_len,
       int (*auth_func)(int s,
			struct sockaddr *this, struct sockaddr *that,
			const char *hostname, const char *remote_user,
			const char *local_user, size_t cmd_len,
			const char *cmd))
{
    int errsock2;
    char buf[BUFSIZ];
    char *p;
    size_t len;
    char reply;
    struct sockaddr_storage thisaddr_ss;
    struct sockaddr *thisaddr = (struct sockaddr *)&thisaddr_ss;
    struct sockaddr_storage thataddr_ss;
    struct sockaddr *thataddr = (struct sockaddr *)&thataddr_ss;
    struct sockaddr_storage erraddr_ss;
    struct sockaddr *erraddr = (struct sockaddr *)&erraddr_ss;
    socklen_t addrlen;
    int ret;

    addrlen = sizeof(thisaddr_ss);
    if (FUNC7 (s, thisaddr, &addrlen) < 0) {
	FUNC21 ("getsockname(%s)", hostname);
	return 1;
    }
    addrlen = sizeof(thataddr_ss);
    if (FUNC6 (s, thataddr, &addrlen) < 0) {
	FUNC21 ("getpeername(%s)", hostname);
	return 1;
    }

    if (errsock != -1) {

	addrlen = sizeof(erraddr_ss);
	if (FUNC7 (errsock, erraddr, &addrlen) < 0) {
	    FUNC21 ("getsockname");
	    return 1;
	}

	if (FUNC8 (errsock, 1) < 0) {
	    FUNC21 ("listen");
	    return 1;
	}

	p = buf;
	FUNC17 (p, sizeof(buf), "%u",
		  FUNC12(FUNC18(erraddr)));
	len = FUNC19(buf) + 1;
	if(FUNC11 (s, buf, len) != len) {
	    FUNC21 ("write");
	    FUNC4 (errsock);
	    return 1;
	}


	for (;;) {
	    fd_set fdset;

	    if (errsock >= FD_SETSIZE || s >= FD_SETSIZE)
		FUNC5 (1, "fd too large");

	    FUNC2(&fdset);
	    FUNC1(errsock, &fdset);
	    FUNC1(s, &fdset);

	    ret = FUNC15 (FUNC9(errsock, s) + 1, &fdset, NULL, NULL, NULL);
	    if (ret < 0) {
		if (errno == EINTR)
		    continue;
		FUNC21 ("select");
		FUNC4 (errsock);
		return 1;
	    }
	    if (FUNC0(errsock, &fdset)) {
		errsock2 = FUNC3 (errsock, NULL, NULL);
		FUNC4 (errsock);
		if (errsock2 < 0) {
		    FUNC21 ("accept");
		    return 1;
		}
		break;
	    }

	    /*
	     * there should not arrive any data on this fd so if it's
	     * readable it probably indicates that the other side when
	     * away.
	     */

	    if (FUNC0(s, &fdset)) {
		FUNC22 ("socket closed");
		FUNC4 (errsock);
		errsock2 = -1;
		break;
	    }
	}
    } else {
	if (FUNC11 (s, "0", 2) != 2) {
	    FUNC21 ("write");
	    return 1;
	}
	errsock2 = -1;
    }

    if ((*auth_func)(s, thisaddr, thataddr, hostname,
		     remote_user, local_user,
		     cmd_len, cmd)) {
	FUNC4 (errsock2);
	return 1;
    }

    ret = FUNC10 (s, &reply, 1);
    if (ret < 0) {
	FUNC21 ("read");
	FUNC4 (errsock2);
	return 1;
    } else if (ret == 0) {
	FUNC22 ("unexpected EOF from %s", hostname);
	FUNC4 (errsock2);
	return 1;
    }
    if (reply != 0) {

	FUNC22 ("Error from rshd at %s:", hostname);

	while ((ret = FUNC13 (s, buf, sizeof(buf))) > 0)
	    FUNC23 (STDOUT_FILENO, buf, ret);
        FUNC23 (STDOUT_FILENO,"\n",1);
	FUNC4 (errsock2);
	return 1;
    }

    if (sock_debug) {
	int one = 1;
	if (FUNC16(s, SOL_SOCKET, SO_DEBUG, (void *)&one, sizeof(one)) < 0)
	    FUNC21("setsockopt remote");
	if (errsock2 != -1 &&
	    FUNC16(errsock2, SOL_SOCKET, SO_DEBUG,
		       (void *)&one, sizeof(one)) < 0)
	    FUNC21("setsockopt stderr");
    }

    return FUNC14 (s, errsock2);
}