
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ f_flags; } ;


 int SOPEN_MAX ;
 int close (int) ;
 TYPE_1__* files ;

void
closeall()
{
 int i;

        for (i = 0; i < SOPEN_MAX; i++)
            if (files[i].f_flags != 0)
                (void)close(i);
}
