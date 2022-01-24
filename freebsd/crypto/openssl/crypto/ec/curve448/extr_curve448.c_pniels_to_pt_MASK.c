#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* pniels_t ;
typedef  int /*<<< orphan*/  gf ;
typedef  TYPE_3__* curve448_point_t ;
struct TYPE_8__ {int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  t; } ;
struct TYPE_7__ {int /*<<< orphan*/  z; TYPE_1__* n; } ;
struct TYPE_6__ {int /*<<< orphan*/  a; int /*<<< orphan*/  b; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(curve448_point_t e, const pniels_t d)
{
    gf eu;

    FUNC0(eu, d->n->b, d->n->a);
    FUNC3(e->y, d->n->b, d->n->a);
    FUNC1(e->t, e->y, eu);
    FUNC1(e->x, d->z, e->y);
    FUNC1(e->y, d->z, eu);
    FUNC2(e->z, d->z);
}