
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUID_STDEXT3_L1D_FLUSH ;
 int cpu_stdext_feature3 ;
 int * flush_l1d_hw ;
 int * flush_l1d_sw_abi ;
 int * syscall_ret_l1d_flush ;
 int syscall_ret_l1d_flush_mode ;

void
amd64_syscall_ret_flush_l1d_recalc(void)
{
 bool l1d_hw;

 l1d_hw = (cpu_stdext_feature3 & CPUID_STDEXT3_L1D_FLUSH) != 0;
again:
 switch (syscall_ret_l1d_flush_mode) {
 case 0:
  syscall_ret_l1d_flush = ((void*)0);
  break;
 case 1:
  syscall_ret_l1d_flush = l1d_hw ? flush_l1d_hw :
      flush_l1d_sw_abi;
  break;
 case 2:
  syscall_ret_l1d_flush = l1d_hw ? flush_l1d_hw : ((void*)0);
  break;
 case 3:
  syscall_ret_l1d_flush = flush_l1d_sw_abi;
  break;
 default:
  syscall_ret_l1d_flush_mode = 1;
  goto again;
 }
}
