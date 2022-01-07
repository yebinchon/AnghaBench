
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct res_sym {scalar_t__ name; int number; } ;


 scalar_t__ strcasecmp (char const*,scalar_t__) ;

int
sym_ston(const struct res_sym *syms, const char *name, int *success) {
 for ((void)((void*)0); syms->name != 0; syms++) {
  if (strcasecmp (name, syms->name) == 0) {
   if (success)
    *success = 1;
   return (syms->number);
  }
 }
 if (success)
  *success = 0;
 return (syms->number);
}
