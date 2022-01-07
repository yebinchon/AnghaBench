
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cam_ed {int refcount; TYPE_1__* target; } ;
struct cam_eb {int eb_mtx; } ;
struct TYPE_2__ {struct cam_eb* bus; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
xpt_acquire_device(struct cam_ed *device)
{
 struct cam_eb *bus = device->target->bus;

 mtx_lock(&bus->eb_mtx);
 device->refcount++;
 mtx_unlock(&bus->eb_mtx);
}
