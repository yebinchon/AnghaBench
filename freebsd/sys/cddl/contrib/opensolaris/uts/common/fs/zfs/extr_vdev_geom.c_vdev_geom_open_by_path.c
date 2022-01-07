
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vdev_path; } ;
typedef TYPE_1__ vdev_t ;
struct g_provider {int dummy; } ;
struct g_consumer {int dummy; } ;


 int B_FALSE ;
 scalar_t__ FULL_MATCH ;
 int ZFS_LOG (int,char*,int) ;
 struct g_provider* g_provider_by_name (int) ;
 int g_topology_assert () ;
 scalar_t__ vdev_attach_ok (TYPE_1__*,struct g_provider*) ;
 struct g_consumer* vdev_geom_attach (struct g_provider*,TYPE_1__*,int ) ;

__attribute__((used)) static struct g_consumer *
vdev_geom_open_by_path(vdev_t *vd, int check_guid)
{
 struct g_provider *pp;
 struct g_consumer *cp;

 g_topology_assert();

 cp = ((void*)0);
 pp = g_provider_by_name(vd->vdev_path + sizeof("/dev/") - 1);
 if (pp != ((void*)0)) {
  ZFS_LOG(1, "Found provider by name %s.", vd->vdev_path);
  if (!check_guid || vdev_attach_ok(vd, pp) == FULL_MATCH)
   cp = vdev_geom_attach(pp, vd, B_FALSE);
 }

 return (cp);
}
