
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __setup_vars (int,char*,char*,char*,char**) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
__calc_left_pad(int flags, char *cur_symb) {

 char cs_precedes, sep_by_space, sign_posn, *signstr;
 int left_chars = 0;

 __setup_vars(flags, &cs_precedes, &sep_by_space, &sign_posn, &signstr);

 if (cs_precedes != 0) {
  left_chars += strlen(cur_symb);
  if (sep_by_space != 0)
   left_chars++;
 }

 switch (sign_posn) {
  case 1:
   left_chars += strlen(signstr);
   break;
  case 3:
  case 4:
   if (cs_precedes != 0)
    left_chars += strlen(signstr);
 }
 return (left_chars);
}
