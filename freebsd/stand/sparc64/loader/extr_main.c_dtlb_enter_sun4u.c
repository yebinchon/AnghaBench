
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int u_long ;
typedef int u_int ;


 int OF_call_method (char*,int ,int,int ,int ,int ,int ) ;
 int mmu ;

__attribute__((used)) static int
dtlb_enter_sun4u(u_int index, u_long data, vm_offset_t virt)
{

 return (OF_call_method("SUNW,dtlb-load", mmu, 3, 0, index, data,
     virt));
}
