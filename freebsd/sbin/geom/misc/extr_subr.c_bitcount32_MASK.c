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
typedef  int uint32_t ;

/* Variables and functions */

uint32_t
FUNC0(uint32_t x)
{

	x = (x & 0x55555555) + ((x & 0xaaaaaaaa) >> 1);
	x = (x & 0x33333333) + ((x & 0xcccccccc) >> 2);
	x = (x & 0x0f0f0f0f) + ((x & 0xf0f0f0f0) >> 4);
	x = (x & 0x00ff00ff) + ((x & 0xff00ff00) >> 8);
	x = (x & 0x0000ffff) + ((x & 0xffff0000) >> 16);
	return (x);
}