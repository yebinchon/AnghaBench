
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svm_regctx {int sctx_dr3; int sctx_dr2; int sctx_dr1; int sctx_dr0; int host_dr6; int host_dr3; int host_dr2; int host_dr1; int host_dr0; int host_debugctl; int host_dr7; } ;


 int MSR_DEBUGCTLMSR ;
 int load_dr0 (int ) ;
 int load_dr1 (int ) ;
 int load_dr2 (int ) ;
 int load_dr3 (int ) ;
 int load_dr7 (int ) ;
 int rdmsr (int ) ;
 int rdr0 () ;
 int rdr1 () ;
 int rdr2 () ;
 int rdr3 () ;
 int rdr6 () ;
 int rdr7 () ;
 int wrmsr (int ,int ) ;

__attribute__((used)) static __inline void
svm_dr_enter_guest(struct svm_regctx *gctx)
{


 gctx->host_dr7 = rdr7();
 gctx->host_debugctl = rdmsr(MSR_DEBUGCTLMSR);







 load_dr7(0);
 wrmsr(MSR_DEBUGCTLMSR, 0);


 gctx->host_dr0 = rdr0();
 gctx->host_dr1 = rdr1();
 gctx->host_dr2 = rdr2();
 gctx->host_dr3 = rdr3();
 gctx->host_dr6 = rdr6();


 load_dr0(gctx->sctx_dr0);
 load_dr1(gctx->sctx_dr1);
 load_dr2(gctx->sctx_dr2);
 load_dr3(gctx->sctx_dr3);
}
