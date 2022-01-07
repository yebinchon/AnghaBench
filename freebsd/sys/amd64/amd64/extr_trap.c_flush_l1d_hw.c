
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IA32_FLUSH_CMD_L1D ;
 int MSR_IA32_FLUSH_CMD ;
 int wrmsr (int ,int ) ;

__attribute__((used)) static void
flush_l1d_hw(void)
{

 wrmsr(MSR_IA32_FLUSH_CMD, IA32_FLUSH_CMD_L1D);
}
