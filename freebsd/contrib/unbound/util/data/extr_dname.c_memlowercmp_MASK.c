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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 

__attribute__((used)) static int
FUNC1(uint8_t* p1, uint8_t* p2, uint8_t len)
{
	while(len--) {
		if(*p1 != *p2 && FUNC0((unsigned char)*p1) != FUNC0((unsigned char)*p2)) {
			if(FUNC0((unsigned char)*p1) < FUNC0((unsigned char)*p2))
				return -1;
			return 1;
		}
		p1++;
		p2++;
	}
	return 0;
}