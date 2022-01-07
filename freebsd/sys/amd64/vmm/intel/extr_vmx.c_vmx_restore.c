
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t curcpu ;
 int vmxon (int ) ;
 scalar_t__* vmxon_enabled ;
 int * vmxon_region ;

__attribute__((used)) static void
vmx_restore(void)
{

 if (vmxon_enabled[curcpu])
  vmxon(vmxon_region[curcpu]);
}
