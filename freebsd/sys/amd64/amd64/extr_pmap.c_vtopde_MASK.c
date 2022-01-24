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
typedef  int vm_offset_t ;
typedef  int u_int64_t ;
typedef  int /*<<< orphan*/  pd_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 unsigned long NPDEPGSHIFT ; 
 unsigned long NPDPEPGSHIFT ; 
 unsigned long NPML4EPGSHIFT ; 
 int PDRSHIFT ; 
 int /*<<< orphan*/ * PDmap ; 
 int VM_MAXUSER_ADDRESS ; 

__attribute__((used)) static __inline pd_entry_t *
FUNC1(vm_offset_t va)
{
	u_int64_t mask = ((1ul << (NPDEPGSHIFT + NPDPEPGSHIFT + NPML4EPGSHIFT)) - 1);

	FUNC0(va >= VM_MAXUSER_ADDRESS, ("vtopde on a uva/gpa 0x%0lx", va));

	return (PDmap + ((va >> PDRSHIFT) & mask));
}