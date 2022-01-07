
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __p_rcode_syms ;
 char const* sym_ntos (int ,int,int*) ;

const char *
p_rcode(int rcode) {
 return (sym_ntos(__p_rcode_syms, rcode, (int *)0));
}
