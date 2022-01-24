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
typedef  int /*<<< orphan*/  mask_t ;
typedef  int /*<<< orphan*/  gf ;
typedef  TYPE_1__* curve448_point_t ;
typedef  int /*<<< orphan*/  c448_bool_t ;
struct TYPE_4__ {int /*<<< orphan*/  x; int /*<<< orphan*/  y; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

c448_bool_t FUNC3(const curve448_point_t p,
                              const curve448_point_t q)
{
    mask_t succ;
    gf a, b;

    /* equality mod 2-torsion compares x/y */
    FUNC1(a, p->y, q->x);
    FUNC1(b, q->y, p->x);
    succ = FUNC0(a, b);

    return FUNC2(succ);
}