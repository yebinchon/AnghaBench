
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxctx {int host_tf; int host_dr7; int host_debugctl; int host_dr6; int host_dr3; int host_dr2; int host_dr1; int host_dr0; int guest_dr6; int guest_dr3; int guest_dr2; int guest_dr1; int guest_dr0; } ;


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
 int rdr6 () ;
 int read_rflags () ;
 int write_rflags (int) ;
 int wrmsr (int ,int ) ;

__attribute__((used)) static __inline void
vmx_dr_leave_guest(struct vmxctx *vmxctx)
{


 vmxctx->guest_dr0 = rdr0();
 vmxctx->guest_dr1 = rdr1();
 vmxctx->guest_dr2 = rdr2();
 vmxctx->guest_dr3 = rdr3();
 vmxctx->guest_dr6 = rdr6();





 load_dr0(vmxctx->host_dr0);
 load_dr1(vmxctx->host_dr1);
 load_dr2(vmxctx->host_dr2);
 load_dr3(vmxctx->host_dr3);
 load_dr6(vmxctx->host_dr6);
 wrmsr(MSR_DEBUGCTLMSR, vmxctx->host_debugctl);
 load_dr7(vmxctx->host_dr7);
 write_rflags(read_rflags() | vmxctx->host_tf);
}
