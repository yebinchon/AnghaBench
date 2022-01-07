
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


union ccb {int ccb_h; } ;
struct cam_periph {TYPE_3__* path; TYPE_2__* softc; } ;
struct TYPE_7__ {int action; struct cam_periph* periph; scalar_t__ flags; int request_ccbs; } ;
typedef TYPE_2__ probe_softc ;
typedef int cam_status ;
struct TYPE_9__ {int tqe; } ;
struct TYPE_8__ {TYPE_1__* bus; } ;
struct TYPE_6__ {int last_reset; } ;


 int CAM_DEBUG (TYPE_3__*,int ,char*) ;
 int CAM_DEBUG_PROBE ;
 int CAM_REQ_CMP ;
 int CAM_REQ_CMP_ERR ;
 int M_CAMXPT ;
 int M_NOWAIT ;
 int PROBE_INVALID ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,int *,int ) ;
 scalar_t__ cam_periph_acquire (struct cam_periph*) ;
 int cam_periph_freeze_after_event (struct cam_periph*,int *,int ) ;
 scalar_t__ malloc (int,int ,int ) ;
 TYPE_4__ periph_links ;
 int printf (char*) ;
 int probeschedule (struct cam_periph*) ;
 int scsi_delay ;
 int scsi_devise_transport (TYPE_3__*) ;

__attribute__((used)) static cam_status
proberegister(struct cam_periph *periph, void *arg)
{
 union ccb *request_ccb;
 probe_softc *softc;

 request_ccb = (union ccb *)arg;
 if (request_ccb == ((void*)0)) {
  printf("proberegister: no probe CCB, "
         "can't register device\n");
  return(CAM_REQ_CMP_ERR);
 }

 softc = (probe_softc *)malloc(sizeof(*softc), M_CAMXPT, M_NOWAIT);

 if (softc == ((void*)0)) {
  printf("proberegister: Unable to probe new device. "
         "Unable to allocate softc\n");
  return(CAM_REQ_CMP_ERR);
 }
 TAILQ_INIT(&softc->request_ccbs);
 TAILQ_INSERT_TAIL(&softc->request_ccbs, &request_ccb->ccb_h,
     periph_links.tqe);
 softc->flags = 0;
 periph->softc = softc;
 softc->periph = periph;
 softc->action = PROBE_INVALID;
 if (cam_periph_acquire(periph) != 0)
  return (CAM_REQ_CMP_ERR);

 CAM_DEBUG(periph->path, CAM_DEBUG_PROBE, ("Probe started\n"));
 scsi_devise_transport(periph->path);






 cam_periph_freeze_after_event(periph, &periph->path->bus->last_reset,
          scsi_delay);
 probeschedule(periph);
 return(CAM_REQ_CMP);
}
