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
struct TYPE_3__ {int (* bytes ) (unsigned char*,int) ;} ;
typedef  TYPE_1__ RAND_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/  RAND_F_RAND_BYTES ; 
 int /*<<< orphan*/  RAND_R_FUNC_NOT_IMPLEMENTED ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned char*,int) ; 

int FUNC3(unsigned char *buf, int num)
{
    const RAND_METHOD *meth = FUNC0();

    if (meth->bytes != NULL)
        return meth->bytes(buf, num);
    FUNC1(RAND_F_RAND_BYTES, RAND_R_FUNC_NOT_IMPLEMENTED);
    return -1;
}