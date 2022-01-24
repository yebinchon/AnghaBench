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
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ AUTH_KRB5 ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int FD_SETSIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int RSH_BUFSIZ ; 
 int /*<<< orphan*/  SHUT_WR ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 scalar_t__ auth_method ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 scalar_t__ input ; 
 int /*<<< orphan*/ * ivec_in ; 
 int /*<<< orphan*/ * ivec_out ; 
 scalar_t__ FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int protocol_version ; 
 int FUNC12 (int,char*,int) ; 
 int FUNC13 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15 (int s, int errsock)
{
    fd_set real_readset;
    int count = 1;

#ifdef KRB5
    if(auth_method == AUTH_KRB5 && protocol_version == 2)
	init_ivecs(1, errsock != -1);
#endif

    if (s >= FD_SETSIZE || (errsock != -1 && errsock >= FD_SETSIZE))
	FUNC8 (1, "fd too large");

    FUNC3(&real_readset);
    FUNC2(s, &real_readset);
    if (errsock != -1) {
	FUNC2(errsock, &real_readset);
	++count;
    }
    if(input)
	FUNC2(STDIN_FILENO, &real_readset);

    for (;;) {
	int ret;
	fd_set readset;
	char buf[RSH_BUFSIZ];

	readset = real_readset;
	ret = FUNC13 (FUNC10(s, errsock) + 1, &readset, NULL, NULL, NULL);
	if (ret < 0) {
	    if (errno == EINTR)
		continue;
	    else
		FUNC7 (1, "select");
	}
	if (FUNC1(s, &readset)) {
	    ret = FUNC5 (s, buf, sizeof(buf), ivec_in[0]);
	    if (ret < 0)
		FUNC7 (1, "read");
	    else if (ret == 0) {
		FUNC4 (s);
		FUNC0(s, &real_readset);
		if (--count == 0)
		    return 0;
	    } else
		FUNC11 (STDOUT_FILENO, buf, ret);
	}
	if (errsock != -1 && FUNC1(errsock, &readset)) {
	    ret = FUNC5 (errsock, buf, sizeof(buf), ivec_in[1]);
	    if (ret < 0)
		FUNC7 (1, "read");
	    else if (ret == 0) {
		FUNC4 (errsock);
		FUNC0(errsock, &real_readset);
		if (--count == 0)
		    return 0;
	    } else
		FUNC11 (STDERR_FILENO, buf, ret);
	}
	if (FUNC1(STDIN_FILENO, &readset)) {
	    ret = FUNC12 (STDIN_FILENO, buf, sizeof(buf));
	    if (ret < 0)
		FUNC7 (1, "read");
	    else if (ret == 0) {
		FUNC4 (STDIN_FILENO);
		FUNC0(STDIN_FILENO, &real_readset);
		FUNC14 (s, SHUT_WR);
	    } else
		FUNC6 (s, buf, ret, ivec_out[0]);
	}
    }
}