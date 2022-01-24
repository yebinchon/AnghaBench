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
typedef  scalar_t__ Elf_Addr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ tls_dtv_generation ; 
 void* FUNC1 (scalar_t__**,int,size_t) ; 

void *
FUNC2(Elf_Addr **dtvp, int index, size_t offset)
{
	Elf_Addr *dtv;

	dtv = *dtvp;
	/* Check dtv generation in case new modules have arrived */
	if (FUNC0(dtv[0] == tls_dtv_generation &&
	    dtv[index + 1] != 0))
		return ((void *)(dtv[index + 1] + offset));
	return (FUNC1(dtvp, index, offset));
}