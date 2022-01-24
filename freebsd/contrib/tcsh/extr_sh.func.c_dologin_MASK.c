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
typedef  int /*<<< orphan*/ * command ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  STRsavehist ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  _PATH_BIN_LOGIN ; 
 int /*<<< orphan*/  _PATH_USRBIN_LOGIN ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  blk_cleanup ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  parterm ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char** FUNC7 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

void
FUNC11(Char **v, struct command *c)
{
#ifdef WINNT_NATIVE
    USE(c);
    USE(v);
#else /* !WINNT_NATIVE */
    char **p = FUNC7(v);

    FUNC0(c);
    FUNC2((Char **)p, blk_cleanup);
    FUNC5();
    FUNC6(NULL, FUNC1(STRsavehist) != NULL);
    FUNC8(SIGTERM, &parterm, NULL);
    (void) FUNC4(_PATH_BIN_LOGIN, p);
    (void) FUNC4(_PATH_USRBIN_LOGIN, p);
    FUNC3((Char **)p);
    FUNC9();
    FUNC10(1);
#endif /* !WINNT_NATIVE */
}