
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum uni_verb { ____Placeholder_uni_verb } uni_verb ;


 int UNI_MAXFACILITY ;
 int sprintf (char*,char*,int) ;
 char const** verb_names ;

const char *
uni_facname(enum uni_verb fac)
{
 static char buf[40];

 if (fac >= UNI_MAXFACILITY) {
  sprintf(buf, "FAC%u", fac);
  return (buf);
 }
 return (verb_names[fac]);
}
