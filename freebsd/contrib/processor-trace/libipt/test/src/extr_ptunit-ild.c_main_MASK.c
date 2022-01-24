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
struct ptunit_suite {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  bound ; 
 int /*<<< orphan*/  call_9a_cd ; 
 int /*<<< orphan*/  call_9a_cp ; 
 int /*<<< orphan*/  call_ff_3 ; 
 int /*<<< orphan*/  evex_cutoff ; 
 int /*<<< orphan*/  int3 ; 
 int /*<<< orphan*/  intn ; 
 int /*<<< orphan*/  iret ; 
 int /*<<< orphan*/  jmp_ea_cd ; 
 int /*<<< orphan*/  jmp_ea_cp ; 
 int /*<<< orphan*/  jmp_ff_5 ; 
 int /*<<< orphan*/  jmp_rel ; 
 int /*<<< orphan*/  jrcxz ; 
 int /*<<< orphan*/  lds ; 
 int /*<<< orphan*/  lds_disp16 ; 
 int /*<<< orphan*/  lds_disp32 ; 
 int /*<<< orphan*/  lds_ind_disp16 ; 
 int /*<<< orphan*/  lds_ind_disp32 ; 
 int /*<<< orphan*/  lds_ind_disp8 ; 
 int /*<<< orphan*/  les ; 
 int /*<<< orphan*/  les_disp16 ; 
 int /*<<< orphan*/  les_disp32 ; 
 int /*<<< orphan*/  les_ind_disp16 ; 
 int /*<<< orphan*/  les_ind_disp32 ; 
 int /*<<< orphan*/  les_ind_disp8 ; 
 int /*<<< orphan*/  long_nop ; 
 int /*<<< orphan*/  mov_al_16 ; 
 int /*<<< orphan*/  mov_al_16_em32 ; 
 int /*<<< orphan*/  mov_al_32 ; 
 int /*<<< orphan*/  mov_al_32_em16 ; 
 int /*<<< orphan*/  mov_al_32_em64 ; 
 int /*<<< orphan*/  mov_al_64 ; 
 int /*<<< orphan*/  mov_ax_moffs16 ; 
 int /*<<< orphan*/  mov_ax_moffs32 ; 
 int /*<<< orphan*/  mov_ax_moffs64 ; 
 int /*<<< orphan*/  mov_ax_moffs64_32 ; 
 int /*<<< orphan*/  mov_eax_moffs32 ; 
 int /*<<< orphan*/  mov_eax_moffs64 ; 
 int /*<<< orphan*/  mov_eax_moffs64_32 ; 
 int /*<<< orphan*/  mov_rax_moffs64 ; 
 int /*<<< orphan*/  mov_rax_moffs64_32 ; 
 int /*<<< orphan*/  pcmpistri ; 
 int /*<<< orphan*/  FUNC0 (struct ptunit_suite,int /*<<< orphan*/ ) ; 
 struct ptunit_suite FUNC1 (int,char**) ; 
 int FUNC2 (struct ptunit_suite*) ; 
 int /*<<< orphan*/  ptwrite_m32 ; 
 int /*<<< orphan*/  ptwrite_m64 ; 
 int /*<<< orphan*/  ptwrite_r32 ; 
 int /*<<< orphan*/  ptwrite_r64 ; 
 int /*<<< orphan*/  push ; 
 int /*<<< orphan*/  rdtsc ; 
 int /*<<< orphan*/  ret_ca ; 
 int /*<<< orphan*/  syscall ; 
 int /*<<< orphan*/  sysenter ; 
 int /*<<< orphan*/  sysexit ; 
 int /*<<< orphan*/  sysret ; 
 int /*<<< orphan*/  vmcall ; 
 int /*<<< orphan*/  vmlaunch ; 
 int /*<<< orphan*/  vmovdqa ; 
 int /*<<< orphan*/  vmptrld ; 
 int /*<<< orphan*/  vmresume ; 
 int /*<<< orphan*/  vpandn ; 
 int /*<<< orphan*/  vpshufb ; 

int FUNC3(int argc, char **argv)
{
	struct ptunit_suite suite;

	suite = FUNC1(argc, argv);

	FUNC0(suite, push);
	FUNC0(suite, jmp_rel);
	FUNC0(suite, long_nop);
	FUNC0(suite, mov_al_64);
	FUNC0(suite, mov_al_32);
	FUNC0(suite, mov_al_32_em64);
	FUNC0(suite, mov_al_32_em16);
	FUNC0(suite, mov_al_16_em32);
	FUNC0(suite, mov_al_16);
	FUNC0(suite, rdtsc);
	FUNC0(suite, pcmpistri);
	FUNC0(suite, vmovdqa);
	FUNC0(suite, vpandn);
	FUNC0(suite, syscall);
	FUNC0(suite, sysret);
	FUNC0(suite, sysenter);
	FUNC0(suite, sysexit);
	FUNC0(suite, int3);
	FUNC0(suite, intn);
	FUNC0(suite, iret);
	FUNC0(suite, call_9a_cd);
	FUNC0(suite, call_9a_cp);
	FUNC0(suite, call_ff_3);
	FUNC0(suite, jmp_ff_5);
	FUNC0(suite, jmp_ea_cd);
	FUNC0(suite, jmp_ea_cp);
	FUNC0(suite, ret_ca);
	FUNC0(suite, vmlaunch);
	FUNC0(suite, vmresume);
	FUNC0(suite, vmcall);
	FUNC0(suite, vmptrld);
	FUNC0(suite, jrcxz);
	FUNC0(suite, mov_eax_moffs64);
	FUNC0(suite, mov_eax_moffs64_32);
	FUNC0(suite, mov_rax_moffs64);
	FUNC0(suite, mov_rax_moffs64_32);
	FUNC0(suite, mov_ax_moffs64);
	FUNC0(suite, mov_ax_moffs64_32);
	FUNC0(suite, mov_eax_moffs32);
	FUNC0(suite, mov_ax_moffs32);
	FUNC0(suite, mov_ax_moffs16);
	FUNC0(suite, les);
	FUNC0(suite, les_disp16);
	FUNC0(suite, les_disp32);
	FUNC0(suite, les_ind_disp8);
	FUNC0(suite, les_ind_disp16);
	FUNC0(suite, les_ind_disp32);
	FUNC0(suite, lds);
	FUNC0(suite, lds_disp16);
	FUNC0(suite, lds_disp32);
	FUNC0(suite, lds_ind_disp8);
	FUNC0(suite, lds_ind_disp16);
	FUNC0(suite, lds_ind_disp32);
	FUNC0(suite, vpshufb);
	FUNC0(suite, bound);
	FUNC0(suite, evex_cutoff);
	FUNC0(suite, ptwrite_r32);
	FUNC0(suite, ptwrite_m32);
	FUNC0(suite, ptwrite_r64);
	FUNC0(suite, ptwrite_m64);

	return FUNC2(&suite);
}