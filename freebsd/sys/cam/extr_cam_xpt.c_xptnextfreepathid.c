
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cam_eb {scalar_t__ path_id; } ;
typedef scalar_t__ path_id_t ;
struct TYPE_2__ {int xpt_busses; int xpt_topo_lock; } ;


 int MA_OWNED ;
 struct cam_eb* TAILQ_FIRST (int *) ;
 struct cam_eb* TAILQ_NEXT (struct cam_eb*,int ) ;
 int links ;
 int mtx_assert (int *,int ) ;
 scalar_t__ resource_string_value (char*,scalar_t__,char*,char const**) ;
 TYPE_1__ xsoftc ;

__attribute__((used)) static path_id_t
xptnextfreepathid(void)
{
 struct cam_eb *bus;
 path_id_t pathid;
 const char *strval;

 mtx_assert(&xsoftc.xpt_topo_lock, MA_OWNED);
 pathid = 0;
 bus = TAILQ_FIRST(&xsoftc.xpt_busses);
retry:

 while (bus != ((void*)0) && bus->path_id <= pathid) {
  if (bus->path_id == pathid)
   pathid++;
  bus = TAILQ_NEXT(bus, links);
 }





 if (resource_string_value("scbus", pathid, "at", &strval) == 0) {
  ++pathid;

  goto retry;
 }
 return (pathid);
}
