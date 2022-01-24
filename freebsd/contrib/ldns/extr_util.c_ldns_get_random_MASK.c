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
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 int FUNC0 (unsigned char*,int) ; 
 scalar_t__ FUNC1 () ; 

uint16_t
FUNC2(void)
{
        uint16_t rid = 0;
#ifdef HAVE_SSL
        if (RAND_bytes((unsigned char*)&rid, 2) != 1) {
                rid = (uint16_t) random();
        }
#else
        rid = (uint16_t) FUNC1();
#endif
	return rid;
}