
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 scalar_t__ in_plt_section (scalar_t__,int *) ;
 scalar_t__ interp_plt_sect_high ;
 scalar_t__ interp_plt_sect_low ;
 scalar_t__ interp_text_sect_high ;
 scalar_t__ interp_text_sect_low ;

__attribute__((used)) static int
svr4_in_dynsym_resolve_code (CORE_ADDR pc)
{
  return ((pc >= interp_text_sect_low && pc < interp_text_sect_high)
   || (pc >= interp_plt_sect_low && pc < interp_plt_sect_high)
   || in_plt_section (pc, ((void*)0)));
}
