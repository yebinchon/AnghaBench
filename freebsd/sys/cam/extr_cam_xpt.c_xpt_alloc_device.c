
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cam_et {int generation; int ed_entries; int refcount; } ;
struct cam_ed {scalar_t__ lun_id; int refcount; int device_destroy_task; int callout; int device_mtx; scalar_t__ tag_saved_openings; scalar_t__ tag_delay_count; int flags; scalar_t__ generation; int periphs; int asyncs; int ccbq; TYPE_2__* sim; struct cam_et* target; int devq_entry; } ;
struct cam_eb {TYPE_2__* sim; int eb_mtx; } ;
struct TYPE_3__ {scalar_t__ array_size; } ;
struct cam_devq {int send_mtx; TYPE_1__ send_queue; } ;
typedef scalar_t__ lun_id_t ;
typedef scalar_t__ cam_status ;
struct TYPE_4__ {int max_dev_openings; struct cam_devq* devq; } ;


 int CAM_DEV_UNCONFIGURED ;
 scalar_t__ CAM_REQ_CMP ;
 int MA_OWNED ;
 int MTX_DEF ;
 int M_CAMDEV ;
 int M_NOWAIT ;
 int M_ZERO ;
 int SLIST_INIT (int *) ;
 struct cam_ed* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_BEFORE (struct cam_ed*,struct cam_ed*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct cam_ed*,int ) ;
 struct cam_ed* TAILQ_NEXT (struct cam_ed*,int ) ;
 int TASK_INIT (int *,int ,int ,struct cam_ed*) ;
 int callout_init_mtx (int *,int *,int ) ;
 scalar_t__ cam_ccbq_init (int *,int ) ;
 scalar_t__ cam_devq_resize (struct cam_devq*,scalar_t__) ;
 int cam_init_pinfo (int *) ;
 int free (struct cam_ed*,int ) ;
 int links ;
 scalar_t__ malloc (int,int ,int) ;
 int mtx_assert (int *,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xpt_destroy_device ;

struct cam_ed *
xpt_alloc_device(struct cam_eb *bus, struct cam_et *target, lun_id_t lun_id)
{
 struct cam_ed *cur_device, *device;
 struct cam_devq *devq;
 cam_status status;

 mtx_assert(&bus->eb_mtx, MA_OWNED);

 devq = bus->sim->devq;
 mtx_lock(&devq->send_mtx);
 status = cam_devq_resize(devq, devq->send_queue.array_size + 1);
 mtx_unlock(&devq->send_mtx);
 if (status != CAM_REQ_CMP)
  return (((void*)0));

 device = (struct cam_ed *)malloc(sizeof(*device),
      M_CAMDEV, M_NOWAIT|M_ZERO);
 if (device == ((void*)0))
  return (((void*)0));

 cam_init_pinfo(&device->devq_entry);
 device->target = target;
 device->lun_id = lun_id;
 device->sim = bus->sim;
 if (cam_ccbq_init(&device->ccbq,
     bus->sim->max_dev_openings) != 0) {
  free(device, M_CAMDEV);
  return (((void*)0));
 }
 SLIST_INIT(&device->asyncs);
 SLIST_INIT(&device->periphs);
 device->generation = 0;
 device->flags = CAM_DEV_UNCONFIGURED;
 device->tag_delay_count = 0;
 device->tag_saved_openings = 0;
 device->refcount = 1;
 mtx_init(&device->device_mtx, "CAM device lock", ((void*)0), MTX_DEF);
 callout_init_mtx(&device->callout, &devq->send_mtx, 0);
 TASK_INIT(&device->device_destroy_task, 0, xpt_destroy_device, device);




 target->refcount++;

 cur_device = TAILQ_FIRST(&target->ed_entries);
 while (cur_device != ((void*)0) && cur_device->lun_id < lun_id)
  cur_device = TAILQ_NEXT(cur_device, links);
 if (cur_device != ((void*)0))
  TAILQ_INSERT_BEFORE(cur_device, device, links);
 else
  TAILQ_INSERT_TAIL(&target->ed_entries, device, links);
 target->generation++;
 return (device);
}
