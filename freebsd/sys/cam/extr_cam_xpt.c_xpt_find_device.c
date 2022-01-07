
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cam_et {int ed_entries; TYPE_1__* bus; } ;
struct cam_ed {scalar_t__ lun_id; int refcount; } ;
typedef scalar_t__ lun_id_t ;
struct TYPE_2__ {int eb_mtx; } ;


 int MA_OWNED ;
 struct cam_ed* TAILQ_FIRST (int *) ;
 struct cam_ed* TAILQ_NEXT (struct cam_ed*,int ) ;
 int links ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static struct cam_ed *
xpt_find_device(struct cam_et *target, lun_id_t lun_id)
{
 struct cam_ed *device;

 mtx_assert(&target->bus->eb_mtx, MA_OWNED);
 for (device = TAILQ_FIRST(&target->ed_entries);
      device != ((void*)0);
      device = TAILQ_NEXT(device, links)) {
  if (device->lun_id == lun_id) {
   device->refcount++;
   break;
  }
 }
 return (device);
}
