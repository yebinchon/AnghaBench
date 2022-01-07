
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int cr0_ones_mask ;
 int cr0_zeros_mask ;

u_long
vmx_fix_cr0(u_long cr0)
{

 return ((cr0 | cr0_ones_mask) & ~cr0_zeros_mask);
}
