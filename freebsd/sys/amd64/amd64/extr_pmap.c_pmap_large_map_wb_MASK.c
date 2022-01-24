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
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_offset_t ;

/* Variables and functions */
 scalar_t__ DMAP_MIN_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ LARGEMAP_MIN_ADDRESS ; 
 int NBPML4 ; 
 scalar_t__ dmaplimit ; 
 int lm_ents ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 

void
FUNC4(void *svap, vm_size_t len)
{
	vm_offset_t eva, sva;

	sva = (vm_offset_t)svap;
	eva = sva + len;
	FUNC2();
	if (sva >= DMAP_MIN_ADDRESS && eva <= DMAP_MIN_ADDRESS + dmaplimit) {
		FUNC1(sva, len);
	} else {
		FUNC0(sva >= LARGEMAP_MIN_ADDRESS &&
		    eva <= LARGEMAP_MIN_ADDRESS + lm_ents * NBPML4,
		    ("pmap_large_map_wb: not largemap %#lx %#lx", sva, len));
		FUNC3(sva, eva);
	}
	FUNC2();
}