
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MSR_VMX_BASIC ;
 int rdmsr (int ) ;

uint32_t
vmx_revision(void)
{

 return (rdmsr(MSR_VMX_BASIC) & 0xffffffff);
}
