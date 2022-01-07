
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __p_class_syms ;
 int sprintf (char*,char*,int) ;
 char* sym_ntos (int ,int,int*) ;

const char *
p_class(int class) {
 int success;
 const char *result;
 static char classbuf[20];

 result = sym_ntos(__p_class_syms, class, &success);
 if (success)
  return (result);
 if (class < 0 || class > 0xffff)
  return ("BADCLASS");
 sprintf(classbuf, "CLASS%d", class);
 return (classbuf);
}
