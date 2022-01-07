
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_suite {int dummy; } ;


 int bound ;
 int call_9a_cd ;
 int call_9a_cp ;
 int call_ff_3 ;
 int evex_cutoff ;
 int int3 ;
 int intn ;
 int iret ;
 int jmp_ea_cd ;
 int jmp_ea_cp ;
 int jmp_ff_5 ;
 int jmp_rel ;
 int jrcxz ;
 int lds ;
 int lds_disp16 ;
 int lds_disp32 ;
 int lds_ind_disp16 ;
 int lds_ind_disp32 ;
 int lds_ind_disp8 ;
 int les ;
 int les_disp16 ;
 int les_disp32 ;
 int les_ind_disp16 ;
 int les_ind_disp32 ;
 int les_ind_disp8 ;
 int long_nop ;
 int mov_al_16 ;
 int mov_al_16_em32 ;
 int mov_al_32 ;
 int mov_al_32_em16 ;
 int mov_al_32_em64 ;
 int mov_al_64 ;
 int mov_ax_moffs16 ;
 int mov_ax_moffs32 ;
 int mov_ax_moffs64 ;
 int mov_ax_moffs64_32 ;
 int mov_eax_moffs32 ;
 int mov_eax_moffs64 ;
 int mov_eax_moffs64_32 ;
 int mov_rax_moffs64 ;
 int mov_rax_moffs64_32 ;
 int pcmpistri ;
 int ptu_run (struct ptunit_suite,int ) ;
 struct ptunit_suite ptunit_mk_suite (int,char**) ;
 int ptunit_report (struct ptunit_suite*) ;
 int ptwrite_m32 ;
 int ptwrite_m64 ;
 int ptwrite_r32 ;
 int ptwrite_r64 ;
 int push ;
 int rdtsc ;
 int ret_ca ;
 int syscall ;
 int sysenter ;
 int sysexit ;
 int sysret ;
 int vmcall ;
 int vmlaunch ;
 int vmovdqa ;
 int vmptrld ;
 int vmresume ;
 int vpandn ;
 int vpshufb ;

int main(int argc, char **argv)
{
 struct ptunit_suite suite;

 suite = ptunit_mk_suite(argc, argv);

 ptu_run(suite, push);
 ptu_run(suite, jmp_rel);
 ptu_run(suite, long_nop);
 ptu_run(suite, mov_al_64);
 ptu_run(suite, mov_al_32);
 ptu_run(suite, mov_al_32_em64);
 ptu_run(suite, mov_al_32_em16);
 ptu_run(suite, mov_al_16_em32);
 ptu_run(suite, mov_al_16);
 ptu_run(suite, rdtsc);
 ptu_run(suite, pcmpistri);
 ptu_run(suite, vmovdqa);
 ptu_run(suite, vpandn);
 ptu_run(suite, syscall);
 ptu_run(suite, sysret);
 ptu_run(suite, sysenter);
 ptu_run(suite, sysexit);
 ptu_run(suite, int3);
 ptu_run(suite, intn);
 ptu_run(suite, iret);
 ptu_run(suite, call_9a_cd);
 ptu_run(suite, call_9a_cp);
 ptu_run(suite, call_ff_3);
 ptu_run(suite, jmp_ff_5);
 ptu_run(suite, jmp_ea_cd);
 ptu_run(suite, jmp_ea_cp);
 ptu_run(suite, ret_ca);
 ptu_run(suite, vmlaunch);
 ptu_run(suite, vmresume);
 ptu_run(suite, vmcall);
 ptu_run(suite, vmptrld);
 ptu_run(suite, jrcxz);
 ptu_run(suite, mov_eax_moffs64);
 ptu_run(suite, mov_eax_moffs64_32);
 ptu_run(suite, mov_rax_moffs64);
 ptu_run(suite, mov_rax_moffs64_32);
 ptu_run(suite, mov_ax_moffs64);
 ptu_run(suite, mov_ax_moffs64_32);
 ptu_run(suite, mov_eax_moffs32);
 ptu_run(suite, mov_ax_moffs32);
 ptu_run(suite, mov_ax_moffs16);
 ptu_run(suite, les);
 ptu_run(suite, les_disp16);
 ptu_run(suite, les_disp32);
 ptu_run(suite, les_ind_disp8);
 ptu_run(suite, les_ind_disp16);
 ptu_run(suite, les_ind_disp32);
 ptu_run(suite, lds);
 ptu_run(suite, lds_disp16);
 ptu_run(suite, lds_disp32);
 ptu_run(suite, lds_ind_disp8);
 ptu_run(suite, lds_ind_disp16);
 ptu_run(suite, lds_ind_disp32);
 ptu_run(suite, vpshufb);
 ptu_run(suite, bound);
 ptu_run(suite, evex_cutoff);
 ptu_run(suite, ptwrite_r32);
 ptu_run(suite, ptwrite_m32);
 ptu_run(suite, ptwrite_r64);
 ptu_run(suite, ptwrite_m64);

 return ptunit_report(&suite);
}
