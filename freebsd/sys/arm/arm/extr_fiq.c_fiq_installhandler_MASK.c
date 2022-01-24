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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,size_t) ; 
 int const vector_page ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(void *func, size_t size)
{
	const uint32_t fiqvector = 7 * sizeof(uint32_t);

#if __ARM_ARCH < 6 && !defined(__ARM_FIQ_INDIRECT)
	FUNC2(VM_PROT_READ|VM_PROT_WRITE);
#endif

	FUNC1((void *)(vector_page + fiqvector), func, size);

#if __ARM_ARCH < 6 && !defined(__ARM_FIQ_INDIRECT)
	FUNC2(VM_PROT_READ);
#endif
	FUNC0((vm_offset_t) fiqvector, size);
}