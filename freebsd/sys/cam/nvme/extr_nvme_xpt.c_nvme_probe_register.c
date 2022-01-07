
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union ccb {int ccb_h; } ;
struct cam_periph {int path; TYPE_1__* softc; } ;
struct TYPE_3__ {int action; struct cam_periph* periph; scalar_t__ flags; int request_ccbs; } ;
typedef TYPE_1__ nvme_probe_softc ;
typedef int cam_status ;
struct TYPE_4__ {int tqe; } ;


 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_PROBE ;
 int CAM_REQ_CMP ;
 int CAM_REQ_CMP_ERR ;
 int M_CAMXPT ;
 int M_NOWAIT ;
 int M_ZERO ;
 int NVME_PROBE_INVALID ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,int *,int ) ;
 scalar_t__ cam_periph_acquire (struct cam_periph*) ;
 scalar_t__ malloc (int,int ,int) ;
 int nvme_probe_schedule (struct cam_periph*) ;
 TYPE_2__ periph_links ;
 int printf (char*) ;

__attribute__((used)) static cam_status
nvme_probe_register(struct cam_periph *periph, void *arg)
{
 union ccb *request_ccb;
 nvme_probe_softc *softc;

 request_ccb = (union ccb *)arg;
 if (request_ccb == ((void*)0)) {
  printf("nvme_probe_register: no probe CCB, "
         "can't register device\n");
  return(CAM_REQ_CMP_ERR);
 }

 softc = (nvme_probe_softc *)malloc(sizeof(*softc), M_CAMXPT, M_ZERO | M_NOWAIT);

 if (softc == ((void*)0)) {
  printf("nvme_probe_register: Unable to probe new device. "
         "Unable to allocate softc\n");
  return(CAM_REQ_CMP_ERR);
 }
 TAILQ_INIT(&softc->request_ccbs);
 TAILQ_INSERT_TAIL(&softc->request_ccbs, &request_ccb->ccb_h,
     periph_links.tqe);
 softc->flags = 0;
 periph->softc = softc;
 softc->periph = periph;
 softc->action = NVME_PROBE_INVALID;
 if (cam_periph_acquire(periph) != 0)
  return (CAM_REQ_CMP_ERR);

 CAM_DEBUG(periph->path, CAM_DEBUG_PROBE, ("Probe started\n"));


 nvme_probe_schedule(periph);

 return(CAM_REQ_CMP);
}
