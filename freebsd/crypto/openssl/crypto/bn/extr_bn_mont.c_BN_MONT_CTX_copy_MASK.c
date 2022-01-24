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
struct TYPE_5__ {int /*<<< orphan*/ * n0; int /*<<< orphan*/  ri; int /*<<< orphan*/  Ni; int /*<<< orphan*/  N; int /*<<< orphan*/  RR; } ;
typedef  TYPE_1__ BN_MONT_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

BN_MONT_CTX *FUNC1(BN_MONT_CTX *to, BN_MONT_CTX *from)
{
    if (to == from)
        return to;

    if (!FUNC0(&(to->RR), &(from->RR)))
        return NULL;
    if (!FUNC0(&(to->N), &(from->N)))
        return NULL;
    if (!FUNC0(&(to->Ni), &(from->Ni)))
        return NULL;
    to->ri = from->ri;
    to->n0[0] = from->n0[0];
    to->n0[1] = from->n0[1];
    return to;
}