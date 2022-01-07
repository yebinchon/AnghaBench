
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct res_sym {scalar_t__ name; int number; char const* humanname; } ;


 int sprintf (char*,char*,int) ;
 char* sym_ntop_unname ;

const char *
sym_ntop(const struct res_sym *syms, int number, int *success) {
 char *unname = sym_ntop_unname;

 for ((void)((void*)0); syms->name != 0; syms++) {
  if (number == syms->number) {
   if (success)
    *success = 1;
   return (syms->humanname);
  }
 }
 sprintf(unname, "%d", number);
 if (success)
  *success = 0;
 return (unname);
}
