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
typedef  int uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC2(char* my_str, char** endstr, uint8_t* m, uint8_t* e)
{
	uint32_t meters = 0, cm = 0, val;
	while (FUNC0((unsigned char)*my_str)) {
		my_str++;
	}
	meters = (uint32_t)FUNC1(my_str, &my_str, 10);
	if (*my_str == '.') {
		my_str++;
		cm = (uint32_t)FUNC1(my_str, &my_str, 10);
	}
	if (meters >= 1) {
		*e = 2;
		val = meters;
	} else	{
		*e = 0;
		val = cm;
	}
	while(val >= 10) {
		(*e)++;
		val /= 10;
	}
	*m = (uint8_t)val;

	if (*e > 9)
		return 0;
	if (*my_str == 'm' || *my_str == 'M') {
		my_str++;
	}
	*endstr = my_str;
	return 1;
}