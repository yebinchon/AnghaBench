#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  RAND_METHOD ;
typedef  int /*<<< orphan*/  RAND_DRBG ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  const* FUNC2 () ; 
 int FUNC3 (unsigned char*,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 

int FUNC5(unsigned char *buf, int num)
{
    const RAND_METHOD *meth = FUNC4();
    RAND_DRBG *drbg;
    int ret;

    if (meth != FUNC2())
        return FUNC3(buf, num);

    drbg = FUNC1();
    if (drbg == NULL)
        return 0;

    ret = FUNC0(drbg, buf, num);
    return ret;
}