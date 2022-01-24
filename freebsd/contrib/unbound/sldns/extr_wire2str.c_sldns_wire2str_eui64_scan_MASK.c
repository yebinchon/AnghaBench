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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int FUNC0 (char**,size_t*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(uint8_t** d, size_t* dl, char** s, size_t* sl)
{
	int w;
	if(*dl < 8)
		return -1;
	w = FUNC0(s, sl, "%.2x-%.2x-%.2x-%.2x-%.2x-%.2x-%.2x-%.2x",
		(*d)[0], (*d)[1], (*d)[2], (*d)[3], (*d)[4], (*d)[5],
		(*d)[6], (*d)[7]);
	(*d)+=8;
	(*dl)-=8;
	return w;
}