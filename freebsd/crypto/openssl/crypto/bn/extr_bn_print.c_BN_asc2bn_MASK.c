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
struct TYPE_5__ {scalar_t__ top; int neg; } ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,char const*) ; 

int FUNC2(BIGNUM **bn, const char *a)
{
    const char *p = a;

    if (*p == '-')
        p++;

    if (p[0] == '0' && (p[1] == 'X' || p[1] == 'x')) {
        if (!FUNC1(bn, p + 2))
            return 0;
    } else {
        if (!FUNC0(bn, p))
            return 0;
    }
    /* Don't set the negative flag if it's zero. */
    if (*a == '-' && (*bn)->top != 0)
        (*bn)->neg = 1;
    return 1;
}