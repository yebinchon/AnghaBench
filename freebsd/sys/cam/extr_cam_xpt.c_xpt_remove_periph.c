
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cam_periph {TYPE_1__* path; } ;
struct cam_ed {TYPE_3__* target; int periphs; int generation; } ;
struct TYPE_8__ {int xpt_generation; } ;
struct TYPE_7__ {TYPE_2__* bus; } ;
struct TYPE_6__ {int eb_mtx; } ;
struct TYPE_5__ {struct cam_ed* device; } ;


 int SLIST_REMOVE (int *,struct cam_periph*,int ,int ) ;
 int atomic_add_32 (int *,int) ;
 int cam_periph ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int periph_links ;
 TYPE_4__ xsoftc ;

void
xpt_remove_periph(struct cam_periph *periph)
{
 struct cam_ed *device;

 device = periph->path->device;
 if (device != ((void*)0)) {
  mtx_lock(&device->target->bus->eb_mtx);
  device->generation++;
  SLIST_REMOVE(&device->periphs, periph, cam_periph, periph_links);
  mtx_unlock(&device->target->bus->eb_mtx);
  atomic_add_32(&xsoftc.xpt_generation, 1);
 }
}
