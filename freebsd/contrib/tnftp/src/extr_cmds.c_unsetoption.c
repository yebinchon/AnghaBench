
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* name; int value; } ;


 int FREEPTR (int ) ;
 int UPRINTF (char*,char*) ;
 int code ;
 int fprintf (int ,char*,char*) ;
 struct option* getoption (char*) ;
 int ttyout ;

void
unsetoption(int argc, char *argv[])
{
 struct option *o;

 code = -1;
 if (argc == 0 || argc != 2) {
  UPRINTF("usage: %s option\n", argv[0]);
  return;
 }

 o = getoption(argv[1]);
 if (o == ((void*)0)) {
  fprintf(ttyout, "No such option `%s'.\n", argv[1]);
  return;
 }
 FREEPTR(o->value);
 fprintf(ttyout, "Unsetting `%s'.\n", o->name);
 code = 0;
}
