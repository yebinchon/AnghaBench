
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int EX_USAGE ;

 int errx (int,char*,char*) ;
 int fill_flags (int ,char*,char**,int*,int*) ;
 int flowtypecmds ;

int
table_parse_type(uint8_t ttype, char *p, uint8_t *tflags)
{
 uint32_t fset, fclear;
 char *e;


 switch(ttype) {
 case 128:
  fset = fclear = 0;
  if (fill_flags(flowtypecmds, p, &e, &fset, &fclear) != 0)
   errx(EX_USAGE,
       "unable to parse flow option %s", e);
  *tflags = fset;
  break;
 default:
  return (EX_USAGE);
 }

 return (0);
}
