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
struct TYPE_5__ {int /*<<< orphan*/  Y; int /*<<< orphan*/  X; int /*<<< orphan*/  Z; } ;
typedef  TYPE_1__ ge25519_p2 ;
struct TYPE_6__ {int /*<<< orphan*/  Z; int /*<<< orphan*/  T; int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
typedef  TYPE_2__ ge25519_p1p1 ;
typedef  int /*<<< orphan*/  fe25519 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(ge25519_p1p1 *r, const ge25519_p2 *p)
{
    fe25519 t0;

    FUNC1(r->X, p->X);
    FUNC1(r->Z, p->Y);
    FUNC2(r->T, p->Z);
    FUNC0(r->Y, p->X, p->Y);
    FUNC1(t0, r->Y);
    FUNC0(r->Y, r->Z, r->X);
    FUNC3(r->Z, r->Z, r->X);
    FUNC3(r->X, t0, r->Y);
    FUNC3(r->T, r->T, r->Z);
}