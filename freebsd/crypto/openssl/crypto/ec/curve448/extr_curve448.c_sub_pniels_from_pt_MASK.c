#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* pniels_t ;
typedef  int /*<<< orphan*/  gf ;
typedef  TYPE_2__* curve448_point_t ;
struct TYPE_7__ {int /*<<< orphan*/  z; } ;
struct TYPE_6__ {int /*<<< orphan*/  n; int /*<<< orphan*/  z; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(curve448_point_t p, const pniels_t pn,
                               int before_double)
{
    gf L0;

    FUNC1(L0, p->z, pn->z);
    FUNC0(p->z, L0);
    FUNC2(p, pn->n, before_double);
}