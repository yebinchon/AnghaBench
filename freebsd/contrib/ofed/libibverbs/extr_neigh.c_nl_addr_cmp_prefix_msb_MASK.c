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
typedef  int uint8_t ;

/* Variables and functions */
 int FUNC0 (void*,void*,int) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(void *addr1, int len1, void *addr2, int len2)
{
	int len = FUNC1(len1, len2);
	int bytes = len / 8;
	int d = FUNC0(addr1, addr2, bytes);

	if (d == 0) {
		int mask = ((1UL << (len % 8)) - 1UL) << (8 - len);

		d = (((uint8_t *)addr1)[bytes] & mask) -
		    (((uint8_t *)addr2)[bytes] & mask);
	}

	return d;
}