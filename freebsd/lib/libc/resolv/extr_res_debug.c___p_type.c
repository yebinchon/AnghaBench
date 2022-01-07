
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __p_type_syms ;
 int sprintf (char*,char*,int) ;
 char* sym_ntos (int ,int,int*) ;

const char *
p_type(int type) {
 int success;
 const char *result;
 static char typebuf[20];

 result = sym_ntos(__p_type_syms, type, &success);
 if (success)
  return (result);
 if (type < 0 || type > 0xffff)
  return ("BADTYPE");
 sprintf(typebuf, "TYPE%d", type);
 return (typebuf);
}
