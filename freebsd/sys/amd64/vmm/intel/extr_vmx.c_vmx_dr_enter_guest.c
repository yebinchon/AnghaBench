
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxctx {int host_tf; int guest_dr6; int guest_dr3; int guest_dr2; int guest_dr1; int guest_dr0; int host_dr6; int host_dr3; int host_dr2; int host_dr1; int host_dr0; int host_debugctl; int host_dr7; } ;
typedef int register_t ;


 int MSR_DEBUGCTLMSR ;
 int PSL_T ;
 int load_dr0 (int ) ;
 int load_dr1 (int ) ;
 int load_dr2 (int ) ;
 int load_dr3 (int ) ;
 int load_dr6 (int ) ;
 int load_dr7 (int ) ;
 int rdmsr (int ) ;
 int rdr0 () ;
 int rdr1 () ;
 int rdr2 () ;
 int rdr3 () ;
 int rdr6 () ;
 int rdr7 () ;
 int read_rflags () ;
 int write_rflags (int) ;
 int wrmsr (int ,int ) ;

__attribute__((used)) static __inline void
vmx_dr_enter_guest(struct vmxctx *vmxctx)
{
 register_t rflags;


 vmxctx->host_dr7 = rdr7();
 vmxctx->host_debugctl = rdmsr(MSR_DEBUGCTLMSR);






 load_dr7(0);
 wrmsr(MSR_DEBUGCTLMSR, 0);







 rflags = read_rflags();
 vmxctx->host_tf = rflags & PSL_T;
 write_rflags(rflags & ~PSL_T);


 vmxctx->host_dr0 = rdr0();
 vmxctx->host_dr1 = rdr1();
 vmxctx->host_dr2 = rdr2();
 vmxctx->host_dr3 = rdr3();
 vmxctx->host_dr6 = rdr6();


 load_dr0(vmxctx->guest_dr0);
 load_dr1(vmxctx->guest_dr1);
 load_dr2(vmxctx->guest_dr2);
 load_dr3(vmxctx->guest_dr3);
 load_dr6(vmxctx->guest_dr6);
}
