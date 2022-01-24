#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int c_oflag; } ;

/* Variables and functions */
 int OCRNL ; 
 int ONLCR ; 
 int ONLRET ; 
 char PC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int TAB3 ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* init_file ; 
 scalar_t__ isreset ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__ oldmode ; 
 int /*<<< orphan*/  outc ; 
 char* pad_char ; 
 int /*<<< orphan*/  FUNC4 (char,int /*<<< orphan*/ ) ; 
 char* reset_1string ; 
 char* reset_2string ; 
 char* reset_file ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void)
{
    char *p;
    bool settle;

#ifdef __OBSOLETE__
    if (pad_char != (char *) 0)	/* Get/set pad character. */
	PC = pad_char[0];
#endif /* OBSOLETE */

#ifdef TAB3
    if (oldmode.c_oflag & (TAB3 | ONLCR | OCRNL | ONLRET)) {
	oldmode.c_oflag &= (TAB3 | ONLCR | OCRNL | ONLRET);
	SET_TTY(STDERR_FILENO, &oldmode);
    }
#endif
    settle = FUNC5();

    if (isreset) {
	if ((p = reset_1string) != 0) {
	    FUNC6(p, 0, outc);
	    settle = TRUE;
	}
	if ((p = reset_2string) != 0) {
	    FUNC6(p, 0, outc);
	    settle = TRUE;
	}
	/* What about rf, rs3, as per terminfo man page? */
	/* also might be nice to send rmacs, rmul, rmm */
	if ((p = reset_file) != 0
	    || (p = init_file) != 0) {
	    FUNC1(p);
	    settle = TRUE;
	}
    }

    if (settle) {
	(void) FUNC4('\r', stderr);
	(void) FUNC2(stderr);
	(void) FUNC3(1000);	/* Settle the terminal. */
    }
}