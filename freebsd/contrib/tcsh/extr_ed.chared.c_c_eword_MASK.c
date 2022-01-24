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
 int C_CLASS_WHITE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Char *
FUNC1(Char *p, Char *high, int n)
{
    p++;

    while (n--) {
        int  c_class;

        if (p >= high)
            break;

        /* scan until end of current word (may be all whitespace!) */
        c_class = FUNC0(*p);
        while ((p < high) && c_class == FUNC0(*p))
            p++;

        /* if this was a non_whitespace word, we're ready */
        if (c_class != C_CLASS_WHITE)
            continue;

        /* otherwise, move to the end of the word just found */
        c_class = FUNC0(*p);
        while ((p < high) && c_class == FUNC0(*p))
            p++;
    }

    p--;
    return(p);
}