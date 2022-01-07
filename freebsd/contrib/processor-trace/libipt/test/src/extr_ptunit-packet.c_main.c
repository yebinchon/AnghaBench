
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_suite {int dummy; } ;
struct packet_fixture {int fini; int init; } ;


 int cbr ;
 int cutoff ;
 int cutoff_cyc ;
 int cutoff_ip ;
 int cutoff_mode ;
 int cyc ;
 int exstop ;
 int ip ;
 int mnt ;
 int mode_exec ;
 int mode_tsx ;
 int mtc ;
 int mwait ;
 int no_payload ;
 int pfix_fini ;
 int pfix_init ;
 int pip ;
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
 int pt_ipc_full ;
 int pt_ipc_sext_48 ;
 int pt_ipc_suppressed ;
 int pt_ipc_update_16 ;
 int pt_ipc_update_32 ;
 int pt_ipc_update_48 ;
 int pt_mol_exec ;
 int pt_mol_tsx ;
 int pte_nomem ;
 int ptem_16bit ;
 int ptem_32bit ;
 int ptem_64bit ;
 int ptu_run_f (struct ptunit_suite,int ,struct packet_fixture) ;
 int ptu_run_fp (struct ptunit_suite,int ,struct packet_fixture,int,...) ;
 struct ptunit_suite ptunit_mk_suite (int,char**) ;
 int ptunit_report (struct ptunit_suite*) ;
 int ptw ;
 int pwre ;
 int pwrx ;
 int tma ;
 int tma_bad ;
 int tnt_64 ;
 int tnt_8 ;
 int tsc ;
 int unknown ;
 int unknown_ext ;
 int unknown_ext2 ;
 int vmcs ;

int main(int argc, char **argv)
{
 struct packet_fixture pfix;
 struct ptunit_suite suite;

 pfix.init = pfix_init;
 pfix.fini = pfix_fini;

 suite = ptunit_mk_suite(argc, argv);

 ptu_run_fp(suite, no_payload, pfix, ppt_pad);
 ptu_run_fp(suite, no_payload, pfix, ppt_psb);
 ptu_run_fp(suite, no_payload, pfix, ppt_ovf);
 ptu_run_fp(suite, no_payload, pfix, ppt_psbend);
 ptu_run_fp(suite, no_payload, pfix, ppt_stop);

 ptu_run_fp(suite, unknown, pfix, 4);
 ptu_run_fp(suite, unknown, pfix, -pte_nomem);
 ptu_run_fp(suite, unknown_ext, pfix, 4);
 ptu_run_fp(suite, unknown_ext, pfix, -pte_nomem);
 ptu_run_fp(suite, unknown_ext2, pfix, 4);
 ptu_run_fp(suite, unknown_ext2, pfix, -pte_nomem);

 ptu_run_f(suite, tnt_8, pfix);
 ptu_run_f(suite, tnt_64, pfix);

 ptu_run_fp(suite, ip, pfix, ppt_tip, pt_ipc_suppressed, 0x0ull);
 ptu_run_fp(suite, ip, pfix, ppt_tip, pt_ipc_update_16, 0x42ull);
 ptu_run_fp(suite, ip, pfix, ppt_tip, pt_ipc_update_32, 0x4200ull);
 ptu_run_fp(suite, ip, pfix, ppt_tip, pt_ipc_update_48, 0x4200ull);
 ptu_run_fp(suite, ip, pfix, ppt_tip, pt_ipc_sext_48, 0x42ull);
 ptu_run_fp(suite, ip, pfix, ppt_tip, pt_ipc_full, 0x42ull);

 ptu_run_fp(suite, ip, pfix, ppt_tip, pt_ipc_suppressed, 0x0ull);
 ptu_run_fp(suite, ip, pfix, ppt_tip, pt_ipc_update_16, 0x42ull);
 ptu_run_fp(suite, ip, pfix, ppt_tip, pt_ipc_update_32, 0x4200ull);
 ptu_run_fp(suite, ip, pfix, ppt_tip, pt_ipc_update_48, 0x4200ull);
 ptu_run_fp(suite, ip, pfix, ppt_tip, pt_ipc_sext_48, 0x42ull);
 ptu_run_fp(suite, ip, pfix, ppt_tip, pt_ipc_full, 0x42ull);

 ptu_run_fp(suite, ip, pfix, ppt_tip_pge, pt_ipc_suppressed, 0x0ull);
 ptu_run_fp(suite, ip, pfix, ppt_tip_pge, pt_ipc_update_16, 0x42ull);
 ptu_run_fp(suite, ip, pfix, ppt_tip_pge, pt_ipc_update_32, 0x4200ull);
 ptu_run_fp(suite, ip, pfix, ppt_tip_pge, pt_ipc_update_48, 0x4200ull);
 ptu_run_fp(suite, ip, pfix, ppt_tip_pge, pt_ipc_sext_48, 0x42ull);
 ptu_run_fp(suite, ip, pfix, ppt_tip_pge, pt_ipc_full, 0x42ull);

 ptu_run_fp(suite, ip, pfix, ppt_tip_pgd, pt_ipc_suppressed, 0x0ull);
 ptu_run_fp(suite, ip, pfix, ppt_tip_pgd, pt_ipc_update_16, 0x42ull);
 ptu_run_fp(suite, ip, pfix, ppt_tip_pgd, pt_ipc_update_32, 0x4200ull);
 ptu_run_fp(suite, ip, pfix, ppt_tip_pgd, pt_ipc_update_48, 0x4200ull);
 ptu_run_fp(suite, ip, pfix, ppt_tip_pgd, pt_ipc_sext_48, 0x42ull);
 ptu_run_fp(suite, ip, pfix, ppt_tip_pgd, pt_ipc_full, 0x42ull);

 ptu_run_fp(suite, ip, pfix, ppt_fup, pt_ipc_suppressed, 0x0ull);
 ptu_run_fp(suite, ip, pfix, ppt_fup, pt_ipc_update_16, 0x42ull);
 ptu_run_fp(suite, ip, pfix, ppt_fup, pt_ipc_update_32, 0x4200ull);
 ptu_run_fp(suite, ip, pfix, ppt_fup, pt_ipc_update_48, 0x4200ull);
 ptu_run_fp(suite, ip, pfix, ppt_fup, pt_ipc_sext_48, 0x42ull);
 ptu_run_fp(suite, ip, pfix, ppt_fup, pt_ipc_full, 0x42ull);

 ptu_run_fp(suite, mode_exec, pfix, ptem_16bit);
 ptu_run_fp(suite, mode_exec, pfix, ptem_32bit);
 ptu_run_fp(suite, mode_exec, pfix, ptem_64bit);
 ptu_run_f(suite, mode_tsx, pfix);

 ptu_run_f(suite, pip, pfix);
 ptu_run_f(suite, tsc, pfix);
 ptu_run_f(suite, cbr, pfix);
 ptu_run_f(suite, tma, pfix);
 ptu_run_f(suite, tma_bad, pfix);
 ptu_run_f(suite, mtc, pfix);
 ptu_run_f(suite, cyc, pfix);
 ptu_run_f(suite, vmcs, pfix);
 ptu_run_f(suite, mnt, pfix);
 ptu_run_fp(suite, exstop, pfix, 0);
 ptu_run_fp(suite, exstop, pfix, 1);
 ptu_run_f(suite, mwait, pfix);
 ptu_run_f(suite, pwre, pfix);
 ptu_run_f(suite, pwrx, pfix);
 ptu_run_fp(suite, ptw, pfix, 0, 1);
 ptu_run_fp(suite, ptw, pfix, 1, 0);

 ptu_run_fp(suite, cutoff, pfix, ppt_psb);
 ptu_run_fp(suite, cutoff_ip, pfix, ppt_tip);
 ptu_run_fp(suite, cutoff_ip, pfix, ppt_tip_pge);
 ptu_run_fp(suite, cutoff_ip, pfix, ppt_tip_pgd);
 ptu_run_fp(suite, cutoff_ip, pfix, ppt_fup);
 ptu_run_fp(suite, cutoff, pfix, ppt_ovf);
 ptu_run_fp(suite, cutoff, pfix, ppt_psbend);
 ptu_run_fp(suite, cutoff, pfix, ppt_tnt_64);
 ptu_run_fp(suite, cutoff, pfix, ppt_tsc);
 ptu_run_fp(suite, cutoff, pfix, ppt_cbr);
 ptu_run_fp(suite, cutoff, pfix, ppt_tma);
 ptu_run_fp(suite, cutoff, pfix, ppt_mtc);
 ptu_run_f(suite, cutoff_cyc, pfix);
 ptu_run_fp(suite, cutoff_mode, pfix, pt_mol_exec);
 ptu_run_fp(suite, cutoff_mode, pfix, pt_mol_tsx);
 ptu_run_fp(suite, cutoff, pfix, ppt_vmcs);
 ptu_run_fp(suite, cutoff, pfix, ppt_mnt);
 ptu_run_fp(suite, cutoff, pfix, ppt_exstop);
 ptu_run_fp(suite, cutoff, pfix, ppt_mwait);
 ptu_run_fp(suite, cutoff, pfix, ppt_pwre);
 ptu_run_fp(suite, cutoff, pfix, ppt_pwrx);
 ptu_run_fp(suite, cutoff, pfix, ppt_ptw);

 return ptunit_report(&suite);
}
