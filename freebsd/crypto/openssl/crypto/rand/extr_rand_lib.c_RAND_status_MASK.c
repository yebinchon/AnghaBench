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
struct TYPE_3__ {int (* status ) () ;} ;
typedef  TYPE_1__ RAND_METHOD ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int FUNC1 () ; 

int FUNC2(void)
{
    const RAND_METHOD *meth = FUNC0();

    if (meth->status != NULL)
        return meth->status();
    return 0;
}