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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char**,size_t*,char*,unsigned int) ; 

int FUNC2(uint8_t** d, size_t* dl, char** s, size_t* sl)
{
	int w;
	if(*dl < 4) return -1;
	w = FUNC1(s, sl, "%u", (unsigned)FUNC0(*d));
	(*d)+=4;
	(*dl)-=4;
	return w;
}