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
 void FUNC0 (char*,void*) ; 
 void FUNC1 (char*,void*) ; 
 void FUNC2 (char*,void*) ; 

int FUNC3(void (*fptr)(char*,void*))
{
	if(fptr == &config_print_func) return 1;
	else if(fptr == &config_collate_func) return 1;
	else if(fptr == &remote_get_opt_ssl) return 1;
	return 0;
}