#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  xy2d; int /*<<< orphan*/  yminusx; int /*<<< orphan*/  yplusx; } ;
typedef  TYPE_1__ ge25519_precomp ;
struct TYPE_8__ {int /*<<< orphan*/  Z; int /*<<< orphan*/  T; int /*<<< orphan*/  X; int /*<<< orphan*/  Y; } ;
typedef  TYPE_2__ ge25519_p3 ;
struct TYPE_9__ {int /*<<< orphan*/  T; int /*<<< orphan*/  Z; int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
typedef  TYPE_3__ ge25519_p1p1 ;
typedef  int /*<<< orphan*/  fe25519 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(ge25519_p1p1 *r, const ge25519_p3 *p, const ge25519_precomp *q)
{
    fe25519 t0;

    FUNC0(r->X, p->Y, p->X);
    FUNC2(r->Y, p->Y, p->X);
    FUNC1(r->Z, r->X, q->yplusx);
    FUNC1(r->Y, r->Y, q->yminusx);
    FUNC1(r->T, q->xy2d, p->T);
    FUNC0(t0, p->Z, p->Z);
    FUNC2(r->X, r->Z, r->Y);
    FUNC0(r->Y, r->Z, r->Y);
    FUNC0(r->Z, t0, r->T);
    FUNC2(r->T, t0, r->T);
}