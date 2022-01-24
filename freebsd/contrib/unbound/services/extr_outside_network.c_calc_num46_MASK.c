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

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 

__attribute__((used)) static void 
FUNC1(char** ifs, int num_ifs, int do_ip4, int do_ip6, 
	int* num_ip4, int* num_ip6)
{
	int i;
	*num_ip4 = 0;
	*num_ip6 = 0;
	if(num_ifs <= 0) {
		if(do_ip4)
			*num_ip4 = 1;
		if(do_ip6)
			*num_ip6 = 1;
		return;
	}
	for(i=0; i<num_ifs; i++)
	{
		if(FUNC0(ifs[i])) {
			if(do_ip6)
				(*num_ip6)++;
		} else {
			if(do_ip4)
				(*num_ip4)++;
		}
	}

}