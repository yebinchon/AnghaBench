
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union ccb {int ccb_h; } ;
struct cam_periph {int path; TYPE_1__* softc; } ;
struct TYPE_3__ {int action; struct cam_periph* periph; scalar_t__ flags; int request_ccbs; } ;
typedef TYPE_1__ probe_softc ;
typedef int cam_status ;
struct TYPE_4__ {int tqe; } ;


 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_PROBE ;
 int CAM_REQ_CMP ;
 int CAM_REQ_CMP_ERR ;
 int M_CAMXPT ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PROBE_INVALID ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,int *,int ) ;
 int ata_device_transport (int ) ;
 scalar_t__ cam_periph_acquire (struct cam_periph*) ;
 scalar_t__ malloc (int,int ,int) ;
 TYPE_2__ periph_links ;
 int printf (char*) ;
 int probeschedule (struct cam_periph*) ;

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

 softc = (probe_softc *)malloc(sizeof(*softc), M_CAMXPT, M_ZERO | M_NOWAIT);

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
 ata_device_transport(periph->path);
 probeschedule(periph);
 return(CAM_REQ_CMP);
}
