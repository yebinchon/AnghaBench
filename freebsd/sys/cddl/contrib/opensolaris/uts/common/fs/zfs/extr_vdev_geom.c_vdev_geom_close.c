
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int vdev_reopening; struct g_consumer* vdev_tsd; } ;
typedef TYPE_2__ vdev_t ;
struct g_consumer {int flags; TYPE_1__* provider; } ;
struct TYPE_5__ {scalar_t__ error; } ;


 int DROP_GIANT () ;
 int G_CF_ORPHAN ;
 int PICKUP_GIANT () ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int vdev_geom_close_locked (TYPE_2__*) ;

__attribute__((used)) static void
vdev_geom_close(vdev_t *vd)
{
 struct g_consumer *cp;

 cp = vd->vdev_tsd;

 DROP_GIANT();
 g_topology_lock();

 if (!vd->vdev_reopening ||
     (cp != ((void*)0) && ((cp->flags & G_CF_ORPHAN) != 0 ||
     (cp->provider != ((void*)0) && cp->provider->error != 0))))
  vdev_geom_close_locked(vd);

 g_topology_unlock();
 PICKUP_GIANT();
}
