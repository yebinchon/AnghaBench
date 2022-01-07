
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ index; } ;
struct cam_ed {scalar_t__ refcount; int flags; int device_destroy_task; int nvme_cdata; int nvme_data; int serial_num; int rcap_buf; int physpath; int ext_inq; int device_id; int supported_vpds; int ccbq; TYPE_5__* target; int callout; TYPE_3__ devq_entry; int periphs; } ;
struct cam_eb {TYPE_1__* sim; int eb_mtx; } ;
struct TYPE_7__ {scalar_t__ array_size; } ;
struct cam_devq {int send_mtx; TYPE_2__ send_queue; } ;
struct TYPE_10__ {int generation; int ed_entries; struct cam_eb* bus; } ;
struct TYPE_9__ {int xpt_taskq; } ;
struct TYPE_6__ {struct cam_devq* devq; } ;


 int CAM_DEV_REL_TIMEOUT_PENDING ;
 scalar_t__ CAM_UNQUEUED_INDEX ;
 int KASSERT (int,char*) ;
 int M_CAMXPT ;
 int SLIST_EMPTY (int *) ;
 int TAILQ_REMOVE (int *,struct cam_ed*,int ) ;
 int callout_stop (int *) ;
 int cam_ccbq_fini (int *) ;
 int cam_devq_resize (struct cam_devq*,scalar_t__) ;
 int free (int ,int ) ;
 int links ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int taskqueue_enqueue (int ,int *) ;
 int xpt_release_target (TYPE_5__*) ;
 TYPE_4__ xsoftc ;

void
xpt_release_device(struct cam_ed *device)
{
 struct cam_eb *bus = device->target->bus;
 struct cam_devq *devq;

 mtx_lock(&bus->eb_mtx);
 if (--device->refcount > 0) {
  mtx_unlock(&bus->eb_mtx);
  return;
 }

 TAILQ_REMOVE(&device->target->ed_entries, device,links);
 device->target->generation++;
 mtx_unlock(&bus->eb_mtx);


 devq = bus->sim->devq;
 mtx_lock(&devq->send_mtx);
 cam_devq_resize(devq, devq->send_queue.array_size - 1);
 mtx_unlock(&devq->send_mtx);

 KASSERT(SLIST_EMPTY(&device->periphs),
     ("destroying device, but periphs list is not empty"));
 KASSERT(device->devq_entry.index == CAM_UNQUEUED_INDEX,
     ("destroying device while still queued for ccbs"));

 if ((device->flags & CAM_DEV_REL_TIMEOUT_PENDING) != 0)
  callout_stop(&device->callout);

 xpt_release_target(device->target);

 cam_ccbq_fini(&device->ccbq);





 free(device->supported_vpds, M_CAMXPT);
 free(device->device_id, M_CAMXPT);
 free(device->ext_inq, M_CAMXPT);
 free(device->physpath, M_CAMXPT);
 free(device->rcap_buf, M_CAMXPT);
 free(device->serial_num, M_CAMXPT);
 free(device->nvme_data, M_CAMXPT);
 free(device->nvme_cdata, M_CAMXPT);
 taskqueue_enqueue(xsoftc.xpt_taskq, &device->device_destroy_task);
}
