
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zv_state; struct g_provider* zv_provider; int zv_queue_mtx; int zv_queue; } ;
typedef TYPE_1__ zvol_state_t ;
struct g_provider {int geom; int * private; } ;


 int ENXIO ;
 int g_topology_assert () ;
 int g_wither_geom (int ,int ) ;
 int msleep (int*,int *,int ,char*,int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int wakeup_one (int *) ;

__attribute__((used)) static void
zvol_geom_destroy(zvol_state_t *zv)
{
 struct g_provider *pp;

 g_topology_assert();

 mtx_lock(&zv->zv_queue_mtx);
 zv->zv_state = 1;
 wakeup_one(&zv->zv_queue);
 while (zv->zv_state != 2)
  msleep(&zv->zv_state, &zv->zv_queue_mtx, 0, "zvol:w", 0);
 mtx_destroy(&zv->zv_queue_mtx);

 pp = zv->zv_provider;
 zv->zv_provider = ((void*)0);
 pp->private = ((void*)0);
 g_wither_geom(pp->geom, ENXIO);
}
