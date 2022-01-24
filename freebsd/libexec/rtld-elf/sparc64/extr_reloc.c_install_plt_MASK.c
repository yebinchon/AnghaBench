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
typedef  int Elf_Word ;
typedef  int Elf_Addr ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int JMPL_l0_o1 ; 
 int FUNC1 (int) ; 
 int MOV_g1_o0 ; 
 int OR_l0_l0 ; 
 int OR_l0_l1_l0 ; 
 int SAVE ; 
 int SETHI_l0 ; 
 int SETHI_l1 ; 
 int SLLX_l0_32_l0 ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 

__attribute__((used)) static void
FUNC3(Elf_Word *pltgot, Elf_Addr proc)
{

	pltgot[0] = SAVE;
	FUNC2(pltgot, 0);
	pltgot[1] = SETHI_l0 | FUNC0(proc, 42);
	FUNC2(pltgot, 4);
	pltgot[2] = SETHI_l1 | FUNC0(proc, 10);
	FUNC2(pltgot, 8);
	pltgot[3] = OR_l0_l0 | FUNC1((proc) >> 32);
	FUNC2(pltgot, 12);
	pltgot[4] = SLLX_l0_32_l0;
	FUNC2(pltgot, 16);
	pltgot[5] = OR_l0_l1_l0;
	FUNC2(pltgot, 20);
	pltgot[6] = JMPL_l0_o1 | FUNC1(proc);
	FUNC2(pltgot, 24);
	pltgot[7] = MOV_g1_o0;
	FUNC2(pltgot, 28);
}