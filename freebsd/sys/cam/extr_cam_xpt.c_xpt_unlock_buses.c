
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xpt_topo_lock; } ;


 int mtx_unlock (int *) ;
 TYPE_1__ xsoftc ;

void
xpt_unlock_buses(void)
{
 mtx_unlock(&xsoftc.xpt_topo_lock);
}
