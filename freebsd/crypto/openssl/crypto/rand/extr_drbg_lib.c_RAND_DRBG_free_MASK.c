#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ secure; int /*<<< orphan*/  ex_data; int /*<<< orphan*/  lock; int /*<<< orphan*/  adin_pool; TYPE_1__* meth; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* uninstantiate ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ RAND_DRBG ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_EX_INDEX_DRBG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void FUNC6(RAND_DRBG *drbg)
{
    if (drbg == NULL)
        return;

    if (drbg->meth != NULL)
        drbg->meth->uninstantiate(drbg);
    FUNC4(drbg->adin_pool);
    FUNC0(drbg->lock);
    FUNC1(CRYPTO_EX_INDEX_DRBG, drbg, &drbg->ex_data);

    if (drbg->secure)
        FUNC3(drbg, sizeof(*drbg));
    else
        FUNC2(drbg, sizeof(*drbg));
}