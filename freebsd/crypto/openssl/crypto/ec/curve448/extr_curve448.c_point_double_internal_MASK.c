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
typedef  int /*<<< orphan*/  gf ;
typedef  TYPE_1__* curve448_point_t ;
struct TYPE_4__ {int /*<<< orphan*/  t; int /*<<< orphan*/  y; int /*<<< orphan*/  z; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 int GF_HEADROOM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(curve448_point_t p, const curve448_point_t q,
                                  int before_double)
{
    gf a, b, c, d;

    FUNC2(c, q->x);
    FUNC2(a, q->y);
    FUNC0(d, c, a);         /* 2+e */
    FUNC0(p->t, q->y, q->x); /* 2+e */
    FUNC2(b, p->t);
    FUNC4(b, b, d, 3);     /* 4+e */
    FUNC3(p->t, a, c);      /* 3+e */
    FUNC2(p->x, q->z);
    FUNC0(p->z, p->x, p->x); /* 2+e */
    FUNC4(a, p->z, p->t, 4); /* 6+e */
    if (GF_HEADROOM == 5)
        FUNC5(a);      /* or 1+e */
    FUNC1(p->x, a, b);
    FUNC1(p->z, p->t, a);
    FUNC1(p->y, p->t, d);
    if (!before_double)
        FUNC1(p->t, b, d);
}