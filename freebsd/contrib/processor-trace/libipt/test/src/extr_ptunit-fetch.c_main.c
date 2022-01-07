
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_suite {int dummy; } ;
struct fetch_fixture {int fini; int init; } ;


 int fetch_empty ;
 int fetch_exstop_ip ;
 int fetch_mode_exec ;
 int fetch_mode_tsx ;
 int fetch_null ;
 int fetch_tnt_8 ;
 int fetch_type ;
 int fetch_unknown ;
 int fetch_unknown_ext ;
 int fetch_unknown_ext2 ;
 int ffix_fini ;
 int ffix_init ;
 int ppt_cbr ;
 int ppt_cyc ;
 int ppt_exstop ;
 int ppt_fup ;
 int ppt_mnt ;
 int ppt_mtc ;
 int ppt_mwait ;
 int ppt_ovf ;
 int ppt_pad ;
 int ppt_pip ;
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
 int pt_decode_cbr ;
 int pt_decode_cyc ;
 int pt_decode_exstop ;
 int pt_decode_fup ;
 int pt_decode_mnt ;
 int pt_decode_mtc ;
 int pt_decode_mwait ;
 int pt_decode_ovf ;
 int pt_decode_pad ;
 int pt_decode_pip ;
 int pt_decode_psb ;
 int pt_decode_psbend ;
 int pt_decode_ptw ;
 int pt_decode_pwre ;
 int pt_decode_pwrx ;
 int pt_decode_stop ;
 int pt_decode_tip ;
 int pt_decode_tip_pgd ;
 int pt_decode_tip_pge ;
 int pt_decode_tma ;
 int pt_decode_tnt_64 ;
 int pt_decode_tsc ;
 int pt_decode_vmcs ;
 int ptu_run_f (struct ptunit_suite,int ,struct fetch_fixture) ;
 int ptu_run_fp (struct ptunit_suite,int ,struct fetch_fixture,int ,int *) ;
 struct ptunit_suite ptunit_mk_suite (int,char**) ;
 int ptunit_report (struct ptunit_suite*) ;

int main(int argc, char **argv)
{
 struct fetch_fixture ffix;
 struct ptunit_suite suite;

 ffix.init = ffix_init;
 ffix.fini = ffix_fini;

 suite = ptunit_mk_suite(argc, argv);

 ptu_run_f(suite, fetch_null, ffix);
 ptu_run_f(suite, fetch_empty, ffix);

 ptu_run_f(suite, fetch_unknown, ffix);
 ptu_run_f(suite, fetch_unknown_ext, ffix);
 ptu_run_f(suite, fetch_unknown_ext2, ffix);

 ptu_run_fp(suite, fetch_type, ffix, ppt_pad, &pt_decode_pad);
 ptu_run_fp(suite, fetch_type, ffix, ppt_psb, &pt_decode_psb);
 ptu_run_fp(suite, fetch_type, ffix, ppt_tip, &pt_decode_tip);
 ptu_run_fp(suite, fetch_type, ffix, ppt_tnt_64, &pt_decode_tnt_64);
 ptu_run_fp(suite, fetch_type, ffix, ppt_tip_pge, &pt_decode_tip_pge);
 ptu_run_fp(suite, fetch_type, ffix, ppt_tip_pgd, &pt_decode_tip_pgd);
 ptu_run_fp(suite, fetch_type, ffix, ppt_fup, &pt_decode_fup);
 ptu_run_fp(suite, fetch_type, ffix, ppt_pip, &pt_decode_pip);
 ptu_run_fp(suite, fetch_type, ffix, ppt_ovf, &pt_decode_ovf);
 ptu_run_fp(suite, fetch_type, ffix, ppt_psbend, &pt_decode_psbend);
 ptu_run_fp(suite, fetch_type, ffix, ppt_tsc, &pt_decode_tsc);
 ptu_run_fp(suite, fetch_type, ffix, ppt_cbr, &pt_decode_cbr);
 ptu_run_fp(suite, fetch_type, ffix, ppt_tma, &pt_decode_tma);
 ptu_run_fp(suite, fetch_type, ffix, ppt_mtc, &pt_decode_mtc);
 ptu_run_fp(suite, fetch_type, ffix, ppt_cyc, &pt_decode_cyc);
 ptu_run_fp(suite, fetch_type, ffix, ppt_stop, &pt_decode_stop);
 ptu_run_fp(suite, fetch_type, ffix, ppt_vmcs, &pt_decode_vmcs);
 ptu_run_fp(suite, fetch_type, ffix, ppt_mnt, &pt_decode_mnt);
 ptu_run_fp(suite, fetch_type, ffix, ppt_exstop, &pt_decode_exstop);
 ptu_run_fp(suite, fetch_type, ffix, ppt_mwait, &pt_decode_mwait);
 ptu_run_fp(suite, fetch_type, ffix, ppt_pwre, &pt_decode_pwre);
 ptu_run_fp(suite, fetch_type, ffix, ppt_pwrx, &pt_decode_pwrx);
 ptu_run_fp(suite, fetch_type, ffix, ppt_ptw, &pt_decode_ptw);

 ptu_run_f(suite, fetch_tnt_8, ffix);
 ptu_run_f(suite, fetch_mode_exec, ffix);
 ptu_run_f(suite, fetch_mode_tsx, ffix);
 ptu_run_f(suite, fetch_exstop_ip, ffix);

 return ptunit_report(&suite);
}
