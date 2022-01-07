
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct res_sym {int dummy; } ;


 struct res_sym* __p_default_section_syms ;
 struct res_sym* __p_update_section_syms ;

 char const* sym_ntos (struct res_sym const*,int,int*) ;

const char *
p_section(int section, int opcode) {
 const struct res_sym *symbols;

 switch (opcode) {
 case 128:
  symbols = __p_update_section_syms;
  break;
 default:
  symbols = __p_default_section_syms;
  break;
 }
 return (sym_ntos(symbols, section, (int *)0));
}
