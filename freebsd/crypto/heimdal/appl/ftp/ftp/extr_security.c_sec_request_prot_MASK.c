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
typedef  enum protection_level { ____Placeholder_protection_level } protection_level ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int request_data_prot ; 

int
FUNC1(char *level)
{
    int l = FUNC0(level);
    if(l == -1)
	return -1;
    request_data_prot = (enum protection_level)l;
    return 0;
}