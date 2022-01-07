
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cam_eb {scalar_t__ path_id; int refcount; } ;
typedef scalar_t__ path_id_t ;
struct TYPE_2__ {int xpt_busses; } ;


 struct cam_eb* TAILQ_FIRST (int *) ;
 struct cam_eb* TAILQ_NEXT (struct cam_eb*,int ) ;
 int links ;
 int xpt_lock_buses () ;
 int xpt_unlock_buses () ;
 TYPE_1__ xsoftc ;

__attribute__((used)) static struct cam_eb *
xpt_find_bus(path_id_t path_id)
{
 struct cam_eb *bus;

 xpt_lock_buses();
 for (bus = TAILQ_FIRST(&xsoftc.xpt_busses);
      bus != ((void*)0);
      bus = TAILQ_NEXT(bus, links)) {
  if (bus->path_id == path_id) {
   bus->refcount++;
   break;
  }
 }
 xpt_unlock_buses();
 return (bus);
}
