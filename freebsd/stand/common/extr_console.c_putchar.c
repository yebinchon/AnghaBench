
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_flags; int (* c_out ) (int) ;} ;


 int C_ACTIVEOUT ;
 int C_PRESENTOUT ;
 TYPE_1__** consoles ;
 int stub1 (int) ;

void
putchar(int c)
{
    int cons;


    if (c == '\n')
 putchar('\r');

    for (cons = 0; consoles[cons] != ((void*)0); cons++)
 if ((consoles[cons]->c_flags & (C_PRESENTOUT | C_ACTIVEOUT)) ==
     (C_PRESENTOUT | C_ACTIVEOUT))
     consoles[cons]->c_out(c);
}
