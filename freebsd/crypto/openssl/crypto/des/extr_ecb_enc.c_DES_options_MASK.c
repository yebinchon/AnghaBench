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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  DES_LONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 

const char *FUNC1(void)
{
    static int init = 1;
    static char buf[12];

    if (init) {
        if (sizeof(DES_LONG) != sizeof(long))
            FUNC0(buf, "des(int)", sizeof(buf));
        else
            FUNC0(buf, "des(long)", sizeof(buf));
        init = 0;
    }
    return buf;
}