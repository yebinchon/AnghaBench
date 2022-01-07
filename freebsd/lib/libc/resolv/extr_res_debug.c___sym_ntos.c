
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct res_sym {scalar_t__ name; int number; } ;


 int sprintf (char*,char*,int) ;
 char* sym_ntos_unname ;

const char *
sym_ntos(const struct res_sym *syms, int number, int *success) {
 char *unname = sym_ntos_unname;

 for ((void)((void*)0); syms->name != 0; syms++) {
  if (number == syms->number) {
   if (success)
    *success = 1;
   return (syms->name);
  }
 }

 sprintf(unname, "%d", number);
 if (success)
  *success = 0;
 return (unname);
}
