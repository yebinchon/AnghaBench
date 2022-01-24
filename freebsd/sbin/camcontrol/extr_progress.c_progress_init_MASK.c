#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct winsize {scalar_t__ ws_col; } ;
struct TYPE_4__ {scalar_t__ ttywidth; int /*<<< orphan*/  start; int /*<<< orphan*/  prefix; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ progress_t ;

/* Variables and functions */
 scalar_t__ DEFAULT_TTYWIDTH ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int errno ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct winsize*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(progress_t *prog, const char *prefix, uint64_t total)
{
        struct winsize	winsize;
        int		oerrno = errno;

	(void) FUNC1(prog, 0x0, sizeof(*prog));
	prog->size = total;
	prog->prefix = FUNC2(prefix);
	prog->start = FUNC3(NULL);
        if (FUNC0(STDOUT_FILENO, TIOCGWINSZ, &winsize) != -1 &&
            winsize.ws_col != 0) {
                prog->ttywidth = winsize.ws_col;
        } else {
                prog->ttywidth = DEFAULT_TTYWIDTH;
	}
        errno = oerrno;
	return 1;
}