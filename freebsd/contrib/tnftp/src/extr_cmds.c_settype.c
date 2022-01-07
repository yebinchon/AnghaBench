
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct types {int t_name; } ;


 int UPRINTF (char*,char*) ;
 int code ;
 int fprintf (int ,char*,char const*,...) ;
 int fputs (char*,int ) ;
 int set_type (char*) ;
 int ttyout ;
 char* typename ;
 struct types* types ;

void
settype(int argc, char *argv[])
{
 struct types *p;

 if (argc == 0 || argc > 2) {
  const char *sep;

  UPRINTF("usage: %s [", argv[0]);
  sep = " ";
  for (p = types; p->t_name; p++) {
   fprintf(ttyout, "%s%s", sep, p->t_name);
   sep = " | ";
  }
  fputs(" ]\n", ttyout);
  code = -1;
  return;
 }
 if (argc < 2) {
  fprintf(ttyout, "Using %s mode to transfer files.\n", typename);
  code = 0;
  return;
 }
 set_type(argv[1]);
}
