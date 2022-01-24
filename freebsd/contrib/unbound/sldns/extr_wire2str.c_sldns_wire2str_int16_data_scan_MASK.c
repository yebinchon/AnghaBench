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
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char**,size_t*,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,size_t*,char**,size_t*,scalar_t__) ; 

int FUNC3(uint8_t** d, size_t* dl, char** s, size_t* sl)
{
	int w;
	uint16_t n;
	if(*dl < 2)
		return -1;
	n = FUNC0(*d);
	if(*dl < 2+(size_t)n)
		return -1;
	(*d)+=2;
	(*dl)-=2;
	if(n == 0) {
		return FUNC1(s, sl, "0");
	}
	w = FUNC1(s, sl, "%u ", (unsigned)n);
	w += FUNC2(d, dl, s, sl, n);
	return w;
}