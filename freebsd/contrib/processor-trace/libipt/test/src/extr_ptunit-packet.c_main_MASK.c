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
struct packet_fixture {int /*<<< orphan*/  fini; int /*<<< orphan*/  init; } ;

/* Variables and functions */
 int /*<<< orphan*/  cbr ; 
 int /*<<< orphan*/  cutoff ; 
 int /*<<< orphan*/  cutoff_cyc ; 
 int /*<<< orphan*/  cutoff_ip ; 
 int /*<<< orphan*/  cutoff_mode ; 
 int /*<<< orphan*/  cyc ; 
 int /*<<< orphan*/  exstop ; 
 int /*<<< orphan*/  ip ; 
 int /*<<< orphan*/  mnt ; 
 int /*<<< orphan*/  mode_exec ; 
 int /*<<< orphan*/  mode_tsx ; 
 int /*<<< orphan*/  mtc ; 
 int /*<<< orphan*/  mwait ; 
 int /*<<< orphan*/  no_payload ; 
 int /*<<< orphan*/  pfix_fini ; 
 int /*<<< orphan*/  pfix_init ; 
 int /*<<< orphan*/  pip ; 
 int ppt_cbr ; 
 int ppt_exstop ; 
 int ppt_fup ; 
 int ppt_mnt ; 
 int ppt_mtc ; 
 int ppt_mwait ; 
 int ppt_ovf ; 
 int ppt_pad ; 
 int ppt_psb ; 
 int ppt_psbend ; 
 int ppt_ptw ; 
 int ppt_pwre ; 
 int ppt_pwrx ; 
 int ppt_stop ; 
 int ppt_tip ; 
 int ppt_tip_pgd ; 
 int ppt_tip_pge ; 
 int ppt_tma ; 
 int ppt_tnt_64 ; 
 int ppt_tsc ; 
 int ppt_vmcs ; 
 int /*<<< orphan*/  pt_ipc_full ; 
 int /*<<< orphan*/  pt_ipc_sext_48 ; 
 int /*<<< orphan*/  pt_ipc_suppressed ; 
 int /*<<< orphan*/  pt_ipc_update_16 ; 
 int /*<<< orphan*/  pt_ipc_update_32 ; 
 int /*<<< orphan*/  pt_ipc_update_48 ; 
 int pt_mol_exec ; 
 int pt_mol_tsx ; 
 int pte_nomem ; 
 int ptem_16bit ; 
 int ptem_32bit ; 
 int ptem_64bit ; 
 int /*<<< orphan*/  FUNC0 (struct ptunit_suite,int /*<<< orphan*/ ,struct packet_fixture) ; 
 int /*<<< orphan*/  FUNC1 (struct ptunit_suite,int /*<<< orphan*/ ,struct packet_fixture,int,...) ; 
 struct ptunit_suite FUNC2 (int,char**) ; 
 int FUNC3 (struct ptunit_suite*) ; 
 int /*<<< orphan*/  ptw ; 
 int /*<<< orphan*/  pwre ; 
 int /*<<< orphan*/  pwrx ; 
 int /*<<< orphan*/  tma ; 
 int /*<<< orphan*/  tma_bad ; 
 int /*<<< orphan*/  tnt_64 ; 
 int /*<<< orphan*/  tnt_8 ; 
 int /*<<< orphan*/  tsc ; 
 int /*<<< orphan*/  unknown ; 
 int /*<<< orphan*/  unknown_ext ; 
 int /*<<< orphan*/  unknown_ext2 ; 
 int /*<<< orphan*/  vmcs ; 

int FUNC4(int argc, char **argv)
{
	struct packet_fixture pfix;
	struct ptunit_suite suite;

	pfix.init = pfix_init;
	pfix.fini = pfix_fini;

	suite = FUNC2(argc, argv);

	FUNC1(suite, no_payload, pfix, ppt_pad);
	FUNC1(suite, no_payload, pfix, ppt_psb);
	FUNC1(suite, no_payload, pfix, ppt_ovf);
	FUNC1(suite, no_payload, pfix, ppt_psbend);
	FUNC1(suite, no_payload, pfix, ppt_stop);

	FUNC1(suite, unknown, pfix, 4);
	FUNC1(suite, unknown, pfix, -pte_nomem);
	FUNC1(suite, unknown_ext, pfix, 4);
	FUNC1(suite, unknown_ext, pfix, -pte_nomem);
	FUNC1(suite, unknown_ext2, pfix, 4);
	FUNC1(suite, unknown_ext2, pfix, -pte_nomem);

	FUNC0(suite, tnt_8, pfix);
	FUNC0(suite, tnt_64, pfix);

	FUNC1(suite, ip, pfix, ppt_tip, pt_ipc_suppressed, 0x0ull);
	FUNC1(suite, ip, pfix, ppt_tip, pt_ipc_update_16, 0x42ull);
	FUNC1(suite, ip, pfix, ppt_tip, pt_ipc_update_32, 0x4200ull);
	FUNC1(suite, ip, pfix, ppt_tip, pt_ipc_update_48, 0x4200ull);
	FUNC1(suite, ip, pfix, ppt_tip, pt_ipc_sext_48, 0x42ull);
	FUNC1(suite, ip, pfix, ppt_tip, pt_ipc_full, 0x42ull);

	FUNC1(suite, ip, pfix, ppt_tip, pt_ipc_suppressed, 0x0ull);
	FUNC1(suite, ip, pfix, ppt_tip, pt_ipc_update_16, 0x42ull);
	FUNC1(suite, ip, pfix, ppt_tip, pt_ipc_update_32, 0x4200ull);
	FUNC1(suite, ip, pfix, ppt_tip, pt_ipc_update_48, 0x4200ull);
	FUNC1(suite, ip, pfix, ppt_tip, pt_ipc_sext_48, 0x42ull);
	FUNC1(suite, ip, pfix, ppt_tip, pt_ipc_full, 0x42ull);

	FUNC1(suite, ip, pfix, ppt_tip_pge, pt_ipc_suppressed, 0x0ull);
	FUNC1(suite, ip, pfix, ppt_tip_pge, pt_ipc_update_16, 0x42ull);
	FUNC1(suite, ip, pfix, ppt_tip_pge, pt_ipc_update_32, 0x4200ull);
	FUNC1(suite, ip, pfix, ppt_tip_pge, pt_ipc_update_48, 0x4200ull);
	FUNC1(suite, ip, pfix, ppt_tip_pge, pt_ipc_sext_48, 0x42ull);
	FUNC1(suite, ip, pfix, ppt_tip_pge, pt_ipc_full, 0x42ull);

	FUNC1(suite, ip, pfix, ppt_tip_pgd, pt_ipc_suppressed, 0x0ull);
	FUNC1(suite, ip, pfix, ppt_tip_pgd, pt_ipc_update_16, 0x42ull);
	FUNC1(suite, ip, pfix, ppt_tip_pgd, pt_ipc_update_32, 0x4200ull);
	FUNC1(suite, ip, pfix, ppt_tip_pgd, pt_ipc_update_48, 0x4200ull);
	FUNC1(suite, ip, pfix, ppt_tip_pgd, pt_ipc_sext_48, 0x42ull);
	FUNC1(suite, ip, pfix, ppt_tip_pgd, pt_ipc_full, 0x42ull);

	FUNC1(suite, ip, pfix, ppt_fup, pt_ipc_suppressed, 0x0ull);
	FUNC1(suite, ip, pfix, ppt_fup, pt_ipc_update_16, 0x42ull);
	FUNC1(suite, ip, pfix, ppt_fup, pt_ipc_update_32, 0x4200ull);
	FUNC1(suite, ip, pfix, ppt_fup, pt_ipc_update_48, 0x4200ull);
	FUNC1(suite, ip, pfix, ppt_fup, pt_ipc_sext_48, 0x42ull);
	FUNC1(suite, ip, pfix, ppt_fup, pt_ipc_full, 0x42ull);

	FUNC1(suite, mode_exec, pfix, ptem_16bit);
	FUNC1(suite, mode_exec, pfix, ptem_32bit);
	FUNC1(suite, mode_exec, pfix, ptem_64bit);
	FUNC0(suite, mode_tsx, pfix);

	FUNC0(suite, pip, pfix);
	FUNC0(suite, tsc, pfix);
	FUNC0(suite, cbr, pfix);
	FUNC0(suite, tma, pfix);
	FUNC0(suite, tma_bad, pfix);
	FUNC0(suite, mtc, pfix);
	FUNC0(suite, cyc, pfix);
	FUNC0(suite, vmcs, pfix);
	FUNC0(suite, mnt, pfix);
	FUNC1(suite, exstop, pfix, 0);
	FUNC1(suite, exstop, pfix, 1);
	FUNC0(suite, mwait, pfix);
	FUNC0(suite, pwre, pfix);
	FUNC0(suite, pwrx, pfix);
	FUNC1(suite, ptw, pfix, 0, 1);
	FUNC1(suite, ptw, pfix, 1, 0);

	FUNC1(suite, cutoff, pfix, ppt_psb);
	FUNC1(suite, cutoff_ip, pfix, ppt_tip);
	FUNC1(suite, cutoff_ip, pfix, ppt_tip_pge);
	FUNC1(suite, cutoff_ip, pfix, ppt_tip_pgd);
	FUNC1(suite, cutoff_ip, pfix, ppt_fup);
	FUNC1(suite, cutoff, pfix, ppt_ovf);
	FUNC1(suite, cutoff, pfix, ppt_psbend);
	FUNC1(suite, cutoff, pfix, ppt_tnt_64);
	FUNC1(suite, cutoff, pfix, ppt_tsc);
	FUNC1(suite, cutoff, pfix, ppt_cbr);
	FUNC1(suite, cutoff, pfix, ppt_tma);
	FUNC1(suite, cutoff, pfix, ppt_mtc);
	FUNC0(suite, cutoff_cyc, pfix);
	FUNC1(suite, cutoff_mode, pfix, pt_mol_exec);
	FUNC1(suite, cutoff_mode, pfix, pt_mol_tsx);
	FUNC1(suite, cutoff, pfix, ppt_vmcs);
	FUNC1(suite, cutoff, pfix, ppt_mnt);
	FUNC1(suite, cutoff, pfix, ppt_exstop);
	FUNC1(suite, cutoff, pfix, ppt_mwait);
	FUNC1(suite, cutoff, pfix, ppt_pwre);
	FUNC1(suite, cutoff, pfix, ppt_pwrx);
	FUNC1(suite, cutoff, pfix, ppt_ptw);

	return FUNC3(&suite);
}