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
struct TYPE_5__ {int /*<<< orphan*/  T; int /*<<< orphan*/  Z; int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
typedef  TYPE_1__ ge_p3 ;
struct TYPE_6__ {int /*<<< orphan*/  Y; int /*<<< orphan*/  X; int /*<<< orphan*/  T; int /*<<< orphan*/  Z; } ;
typedef  TYPE_2__ ge_p1p1 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(ge_p3 *r, const ge_p1p1 *p)
{
    FUNC0(r->X, p->X, p->T);
    FUNC0(r->Y, p->Y, p->Z);
    FUNC0(r->Z, p->Z, p->T);
    FUNC0(r->T, p->X, p->Y);
}