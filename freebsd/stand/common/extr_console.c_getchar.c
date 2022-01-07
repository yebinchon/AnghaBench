
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_flags; int (* c_in ) () ;} ;


 int C_ACTIVEIN ;
 int C_PRESENTIN ;
 TYPE_1__** consoles ;
 int stub1 () ;

int
getchar(void)
{
    int cons;
    int rv;


    for(;;)
 for (cons = 0; consoles[cons] != ((void*)0); cons++)
     if ((consoles[cons]->c_flags & (C_PRESENTIN | C_ACTIVEIN)) ==
  (C_PRESENTIN | C_ACTIVEIN) &&
  ((rv = consoles[cons]->c_in()) != -1))
  return(rv);
}
