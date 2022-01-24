#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* niels_t ;
typedef  int /*<<< orphan*/  gf ;
typedef  TYPE_2__* curve448_point_t ;
struct TYPE_6__ {int /*<<< orphan*/  t; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  z; } ;
struct TYPE_5__ {int /*<<< orphan*/  c; int /*<<< orphan*/  a; int /*<<< orphan*/  b; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(curve448_point_t d, const niels_t e,
                              int before_double)
{
    gf a, b, c;

    FUNC2(b, d->y, d->x);   /* 3+e */
    FUNC1(a, e->b, b);
    FUNC0(b, d->x, d->y);   /* 2+e */
    FUNC1(d->y, e->a, b);
    FUNC1(d->x, e->c, d->t);
    FUNC0(c, a, d->y);      /* 2+e */
    FUNC2(b, d->y, a);      /* 3+e */
    FUNC0(d->y, d->z, d->x); /* 2+e */
    FUNC2(a, d->z, d->x);   /* 3+e */
    FUNC1(d->z, a, d->y);
    FUNC1(d->x, d->y, b);
    FUNC1(d->y, a, c);
    if (!before_double)
        FUNC1(d->t, b, c);
}