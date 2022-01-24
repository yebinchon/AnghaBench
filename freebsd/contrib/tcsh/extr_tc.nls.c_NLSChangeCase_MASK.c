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
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

Char *
FUNC5(const Char *p, int mode)
{
    Char c, *n, c2 = 0;
    const Char *op = p;

    for (; (c = *p) != 0; p++) {
        if (mode == 0 && FUNC0(c)) {
	    c2 = FUNC4(c);
	    break;
        } else if (mode && FUNC1(c)) {
	    c2 = FUNC3(c);
	    break;
	}
    }
    if (!*p)
	return 0;
    n = FUNC2(op);
    n[p - op] = c2;
    return n;
}