
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_flags; scalar_t__ (* c_ready ) () ;} ;


 int C_ACTIVEIN ;
 int C_PRESENTIN ;
 TYPE_1__** consoles ;
 scalar_t__ stub1 () ;

int
ischar(void)
{
    int cons;

    for (cons = 0; consoles[cons] != ((void*)0); cons++)
 if ((consoles[cons]->c_flags & (C_PRESENTIN | C_ACTIVEIN)) ==
     (C_PRESENTIN | C_ACTIVEIN) &&
     (consoles[cons]->c_ready() != 0))
  return(1);
    return(0);
}
