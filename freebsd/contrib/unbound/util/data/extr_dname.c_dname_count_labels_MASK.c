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

int 
FUNC0(uint8_t* dname)
{
	uint8_t lablen;
	int labs = 1;

	lablen = *dname++;
	while(lablen) {
		labs++;
		dname += lablen;
		lablen = *dname++;
	}
	return labs;
}