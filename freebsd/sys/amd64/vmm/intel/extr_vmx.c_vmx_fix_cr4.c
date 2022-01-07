
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int cr4_ones_mask ;
 int cr4_zeros_mask ;

u_long
vmx_fix_cr4(u_long cr4)
{

 return ((cr4 | cr4_ones_mask) & ~cr4_zeros_mask);
}
