
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cam_periph {TYPE_3__* path; int periph_run_task; } ;
struct cam_ed {TYPE_2__* target; int periphs; int generation; } ;
typedef int int32_t ;
struct TYPE_8__ {int xpt_generation; } ;
struct TYPE_7__ {struct cam_ed* device; } ;
struct TYPE_6__ {TYPE_1__* bus; } ;
struct TYPE_5__ {int eb_mtx; } ;


 int CAM_REQ_CMP ;
 int SLIST_INSERT_HEAD (int *,struct cam_periph*,int ) ;
 int TASK_INIT (int *,int ,int ,struct cam_periph*) ;
 int atomic_add_32 (int *,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int periph_links ;
 int xpt_run_allocq_task ;
 TYPE_4__ xsoftc ;

int32_t
xpt_add_periph(struct cam_periph *periph)
{
 struct cam_ed *device;
 int32_t status;

 TASK_INIT(&periph->periph_run_task, 0, xpt_run_allocq_task, periph);
 device = periph->path->device;
 status = CAM_REQ_CMP;
 if (device != ((void*)0)) {
  mtx_lock(&device->target->bus->eb_mtx);
  device->generation++;
  SLIST_INSERT_HEAD(&device->periphs, periph, periph_links);
  mtx_unlock(&device->target->bus->eb_mtx);
  atomic_add_32(&xsoftc.xpt_generation, 1);
 }

 return (status);
}
