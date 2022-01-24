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
typedef  scalar_t__ krb5_socket_t ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FD_SETSIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  WNOHANG ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (int,scalar_t__) ; 
 int /*<<< orphan*/  pgrp ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ rk_SOCK_ERRNO ; 
 int FUNC11 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigchld ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,scalar_t__*,unsigned int,unsigned int) ; 
 scalar_t__ term_flag ; 
 int /*<<< orphan*/  terminate ; 
 scalar_t__ FUNC15 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(krb5_context contextp,
		    krb5_socket_t *socks, unsigned int num_socks)
{
    unsigned int i;
    int e;
    fd_set orig_read_set, read_set;
    int status, max_fd = -1;

    FUNC2(&orig_read_set);

    for(i = 0; i < num_socks; i++) {
#ifdef FD_SETSIZE
	if (socks[i] >= FD_SETSIZE)
	    errx (1, "fd too large");
#endif
	FUNC1(socks[i], &orig_read_set);
	max_fd = FUNC9(max_fd, socks[i]);
    }

    pgrp = FUNC6();

    if(FUNC12(0, pgrp) < 0)
	FUNC3(1, "setpgid");

    FUNC13(SIGTERM, terminate);
    FUNC13(SIGINT, terminate);
    FUNC13(SIGCHLD, sigchld);

    while (term_flag == 0) {
	read_set = orig_read_set;
	e = FUNC11(max_fd + 1, &read_set, NULL, NULL, NULL);
	if(FUNC10(e)) {
	    if(rk_SOCK_ERRNO != EINTR)
		FUNC7(contextp, rk_SOCK_ERRNO, "select");
	} else if(e == 0)
	    FUNC8(contextp, "select returned 0");
	else {
	    for(i = 0; i < num_socks; i++) {
		if(FUNC0(socks[i], &read_set))
		    if(FUNC14(contextp, socks, num_socks, i) == 0)
			return;
	    }
	}
    }
    FUNC13(SIGCHLD, SIG_IGN);

    while ((FUNC15(-1, &status, WNOHANG)) > 0)
	;

    FUNC5(0);
}