
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* sval; } ;
typedef TYPE_1__ Cell ;


 int ARR ;
 scalar_t__ ENVtab ;
 int NSYMTAB ;
 int NUM ;
 int STR ;
 double atof (char*) ;
 scalar_t__ is_number (char*) ;
 scalar_t__ makesymtab (int ) ;
 TYPE_1__* setsymtab (char*,char*,double,int,scalar_t__) ;
 char* strchr (char*,char) ;
 scalar_t__ symtab ;

void envinit(char **envp)
{
 Cell *cp;
 char *p;

 cp = setsymtab("ENVIRON", "", 0.0, ARR, symtab);
 ENVtab = makesymtab(NSYMTAB);
 cp->sval = (char *) ENVtab;
 for ( ; *envp; envp++) {
  if ((p = strchr(*envp, '=')) == ((void*)0))
   continue;
  if( p == *envp )
   continue;
  *p++ = 0;
  if (is_number(p))
   setsymtab(*envp, p, atof(p), STR|NUM, ENVtab);
  else
   setsymtab(*envp, p, 0.0, STR, ENVtab);
  p[-1] = '=';
 }
}
