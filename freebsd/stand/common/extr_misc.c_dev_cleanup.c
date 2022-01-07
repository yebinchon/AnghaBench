
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* dv_cleanup ) () ;} ;


 TYPE_1__** devsw ;
 int stub1 () ;

void
dev_cleanup(void)
{
    int i;


    for (i = 0; devsw[i] != ((void*)0); ++i)
 if (devsw[i]->dv_cleanup != ((void*)0))
     (devsw[i]->dv_cleanup)();
}
