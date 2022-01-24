#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * meth; } ;
typedef  TYPE_1__ EX_CALLBACKS ;

/* Variables and functions */
 int CRYPTO_EX_INDEX__COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cleanup_cb ; 
 TYPE_1__* ex_data ; 
 int /*<<< orphan*/ * ex_data_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
    int i;

    for (i = 0; i < CRYPTO_EX_INDEX__COUNT; ++i) {
        EX_CALLBACKS *ip = &ex_data[i];

        FUNC1(ip->meth, cleanup_cb);
        ip->meth = NULL;
    }

    FUNC0(ex_data_lock);
    ex_data_lock = NULL;
}