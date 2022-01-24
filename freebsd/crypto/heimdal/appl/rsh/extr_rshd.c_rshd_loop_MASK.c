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

/* Variables and functions */
 scalar_t__ AUTH_KRB5 ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int FD_SETSIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int RSHD_BUFSIZ ; 
 int RSH_BUFSIZ ; 
 scalar_t__ auth_method ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * ivec_in ; 
 int /*<<< orphan*/ * ivec_out ; 
 char* FUNC10 (int) ; 
 int FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,int) ; 
 int protocol_version ; 
 int FUNC13 (int,char*,int) ; 
 int FUNC14 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 

__attribute__((used)) static void
FUNC17 (int from0, int to0,
	   int to1,   int from1,
	   int to2,   int from2,
	   int have_errsock)
{
    fd_set real_readset;
    int max_fd;
    int count = 2;
    char *buf;

    if(from0 >= FD_SETSIZE || from1 >= FD_SETSIZE || from2 >= FD_SETSIZE)
	FUNC7 (1, "fd too large");

#ifdef KRB5
    if(auth_method == AUTH_KRB5 && protocol_version == 2)
	init_ivecs(0, have_errsock);
#endif

    FUNC3(&real_readset);
    FUNC2(from0, &real_readset);
    FUNC2(from1, &real_readset);
    FUNC2(from2, &real_readset);
    max_fd = FUNC11(from0, FUNC11(from1, from2)) + 1;

    buf = FUNC10(FUNC11(RSHD_BUFSIZ, RSH_BUFSIZ));
    if (buf == NULL)
	FUNC16("out of memory");

    for (;;) {
	int ret;
	fd_set readset = real_readset;

	ret = FUNC14 (max_fd, &readset, NULL, NULL, NULL);
	if (ret < 0) {
	    if (errno == EINTR)
		continue;
	    else
		FUNC16 ("select: %s", FUNC15(errno));
	}
	if (FUNC1(from0, &readset)) {
	    ret = FUNC5 (from0, buf, RSHD_BUFSIZ, ivec_in[0]);
	    if (ret < 0)
		FUNC16 ("read: %s", FUNC15(errno));
	    else if (ret == 0) {
		FUNC4 (from0);
		FUNC4 (to0);
		FUNC0(from0, &real_readset);
	    } else
		FUNC12 (to0, buf, ret);
	}
	if (FUNC1(from1, &readset)) {
	    ret = FUNC13 (from1, buf, RSH_BUFSIZ);
	    if (ret < 0)
		FUNC16 ("read: %s", FUNC15(errno));
	    else if (ret == 0) {
		FUNC4 (from1);
		FUNC4 (to1);
		FUNC0(from1, &real_readset);
		if (--count == 0)
		    FUNC8 (0);
	    } else
		FUNC6 (to1, buf, ret, ivec_out[0]);
	}
	if (FUNC1(from2, &readset)) {
	    ret = FUNC13 (from2, buf, RSH_BUFSIZ);
	    if (ret < 0)
		FUNC16 ("read: %s", FUNC15(errno));
	    else if (ret == 0) {
		FUNC4 (from2);
		FUNC4 (to2);
		FUNC0(from2, &real_readset);
		if (--count == 0)
		    FUNC8 (0);
	    } else
		FUNC6 (to2, buf, ret, ivec_out[1]);
	}
   }
}