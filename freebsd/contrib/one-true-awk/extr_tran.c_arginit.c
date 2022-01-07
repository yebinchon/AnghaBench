
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* sval; int fval; } ;
typedef TYPE_1__ Cell ;
typedef double Awkfloat ;


 int * ARGC ;
 scalar_t__ ARGVtab ;
 int ARR ;
 int NSYMTAB ;
 int NUM ;
 int STR ;
 double atof (char*) ;
 scalar_t__ is_number (char*) ;
 scalar_t__ makesymtab (int ) ;
 TYPE_1__* setsymtab (char*,char*,double,int,scalar_t__) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ symtab ;

void arginit(int ac, char **av)
{
 Cell *cp;
 int i;
 char temp[50];

 ARGC = &setsymtab("ARGC", "", (Awkfloat) ac, NUM, symtab)->fval;
 cp = setsymtab("ARGV", "", 0.0, ARR, symtab);
 ARGVtab = makesymtab(NSYMTAB);
 cp->sval = (char *) ARGVtab;
 for (i = 0; i < ac; i++) {
  sprintf(temp, "%d", i);
  if (is_number(*av))
   setsymtab(temp, *av, atof(*av), STR|NUM, ARGVtab);
  else
   setsymtab(temp, *av, 0.0, STR, ARGVtab);
  av++;
 }
}
