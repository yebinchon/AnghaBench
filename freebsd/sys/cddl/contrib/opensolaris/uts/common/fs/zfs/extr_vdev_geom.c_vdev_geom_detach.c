
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_geom {char* name; int consumer; } ;
struct g_consumer {scalar_t__ acr; scalar_t__ ace; TYPE_1__* provider; int acw; struct g_geom* geom; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_2__ {char* name; } ;


 int ENXIO ;
 scalar_t__ LIST_EMPTY (int *) ;
 int ZFS_LOG (int,char*,char*) ;
 int g_access (struct g_consumer*,int,int ,int) ;
 int g_destroy_consumer (struct g_consumer*) ;
 int g_detach (struct g_consumer*) ;
 int g_topology_assert () ;
 int g_wither_geom (struct g_geom*,int ) ;

__attribute__((used)) static void
vdev_geom_detach(struct g_consumer *cp, boolean_t open_for_read)
{
 struct g_geom *gp;

 g_topology_assert();

 ZFS_LOG(1, "Detaching from %s.",
     cp->provider && cp->provider->name ? cp->provider->name : "NULL");

 gp = cp->geom;
 if (open_for_read)
  g_access(cp, -1, 0, -1);

 if (cp->acr == 0 && cp->ace == 0) {
  if (cp->acw > 0)
   g_access(cp, 0, -cp->acw, 0);
  if (cp->provider != ((void*)0)) {
   ZFS_LOG(1, "Destroying consumer for %s.",
       cp->provider->name ? cp->provider->name : "NULL");
   g_detach(cp);
  }
  g_destroy_consumer(cp);
 }

 if (LIST_EMPTY(&gp->consumer)) {
  ZFS_LOG(1, "Destroyed geom %s.", gp->name);
  g_wither_geom(gp, ENXIO);
 }
}
