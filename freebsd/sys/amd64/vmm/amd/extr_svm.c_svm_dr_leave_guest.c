
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svm_regctx {int host_dr7; int host_debugctl; int host_dr6; int host_dr3; int host_dr2; int host_dr1; int host_dr0; int sctx_dr3; int sctx_dr2; int sctx_dr1; int sctx_dr0; } ;


 int MSR_DEBUGCTLMSR ;
 int load_dr0 (int ) ;
 int load_dr1 (int ) ;
 int load_dr2 (int ) ;
 int load_dr3 (int ) ;
 int load_dr6 (int ) ;
 int load_dr7 (int ) ;
 int rdr0 () ;
 int rdr1 () ;
 int rdr2 () ;
 int rdr3 () ;
 int wrmsr (int ,int ) ;

__attribute__((used)) static __inline void
svm_dr_leave_guest(struct svm_regctx *gctx)
{


 gctx->sctx_dr0 = rdr0();
 gctx->sctx_dr1 = rdr1();
 gctx->sctx_dr2 = rdr2();
 gctx->sctx_dr3 = rdr3();





 load_dr0(gctx->host_dr0);
 load_dr1(gctx->host_dr1);
 load_dr2(gctx->host_dr2);
 load_dr3(gctx->host_dr3);
 load_dr6(gctx->host_dr6);
 wrmsr(MSR_DEBUGCTLMSR, gctx->host_debugctl);
 load_dr7(gctx->host_dr7);
}
