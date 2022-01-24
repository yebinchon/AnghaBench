#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int /*<<< orphan*/  sa_family; } ;
typedef  int /*<<< orphan*/  str ;
typedef  int socklen_t ;
typedef  scalar_t__ krb5_ssize_t ;
typedef  int krb5_socklen_t ;
typedef  int /*<<< orphan*/  krb5_realm ;
typedef  int /*<<< orphan*/  krb5_keytab ;
typedef  int krb5_error_code ;
struct TYPE_5__ {unsigned int len; int /*<<< orphan*/ * val; } ;
typedef  TYPE_1__ krb5_addresses ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  __ss ;

/* Variables and functions */
 int BUFSIZ ; 
 int EINTR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FD_SETSIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 scalar_t__ FUNC3 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  context ; 
 int errno ; 
 scalar_t__ exit_flag ; 
 TYPE_1__ explicit_addresses ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sockaddr*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC14 (int /*<<< orphan*/ *,char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int* FUNC16 (unsigned int) ; 
 int FUNC17 (int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct sockaddr*,int,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC19 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 scalar_t__ FUNC20 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC23 (krb5_keytab keytab, int port)
{
    krb5_error_code ret;
    int *sockets;
    int maxfd;
    krb5_realm *realms;
    krb5_addresses addrs;
    unsigned n, i;
    fd_set real_fdset;
    struct sockaddr_storage __ss;
    struct sockaddr *sa = (struct sockaddr *)&__ss;

    ret = FUNC13(context, &realms);
    if (ret)
	FUNC7 (context, 1, ret, "krb5_get_default_realms");

    if (explicit_addresses.len) {
	addrs = explicit_addresses;
    } else {
	ret = FUNC12 (context, &addrs);
	if (ret)
	    FUNC7 (context, 1, ret, "krb5_get_all_server_addrs");
    }
    n = addrs.len;

    sockets = FUNC16 (n * sizeof(*sockets));
    if (sockets == NULL)
	FUNC8 (context, 1, "out of memory");
    maxfd = -1;
    FUNC2(&real_fdset);
    for (i = 0; i < n; ++i) {
	krb5_socklen_t sa_size = sizeof(__ss);

	FUNC6 (context, &addrs.val[i], sa, &sa_size, port);

	sockets[i] = FUNC21 (sa->sa_family, SOCK_DGRAM, 0);
	if (sockets[i] < 0)
	    FUNC7 (context, 1, errno, "socket");
	if (FUNC3 (sockets[i], sa, sa_size) < 0) {
	    char str[128];
	    size_t len;
	    int save_errno = errno;

	    ret = FUNC14 (&addrs.val[i], str, sizeof(str), &len);
	    if (ret)
		FUNC22(str, "unknown address", sizeof(str));
	    FUNC15 (context, save_errno, "bind(%s)", str);
	    continue;
	}
	maxfd = FUNC17 (maxfd, sockets[i]);
	if (maxfd >= FD_SETSIZE)
	    FUNC8 (context, 1, "fd too large");
	FUNC1(sockets[i], &real_fdset);
    }
    if (maxfd == -1)
	FUNC8 (context, 1, "No sockets!");

    while(exit_flag == 0) {
	krb5_ssize_t retx;
	fd_set fdset = real_fdset;

	retx = FUNC20 (maxfd + 1, &fdset, NULL, NULL, NULL);
	if (retx < 0) {
	    if (errno == EINTR)
		continue;
	    else
		FUNC7 (context, 1, errno, "select");
	}
	for (i = 0; i < n; ++i)
	    if (FUNC0(sockets[i], &fdset)) {
		u_char buf[BUFSIZ];
		socklen_t addrlen = sizeof(__ss);

		retx = FUNC19(sockets[i], buf, sizeof(buf), 0,
				sa, &addrlen);
		if (retx < 0) {
		    if(errno == EINTR)
			break;
		    else
			FUNC7 (context, 1, errno, "recvfrom");
		}

		FUNC18 (realms, keytab, sockets[i],
			 &addrs.val[i],
			 sa, addrlen,
			 buf, retx);
	    }
    }

    for (i = 0; i < n; ++i)
	FUNC4(sockets[i]);
    FUNC5(sockets);

    FUNC9 (context, &addrs);
    FUNC11 (context, realms);
    FUNC10 (context);
    return 0;
}