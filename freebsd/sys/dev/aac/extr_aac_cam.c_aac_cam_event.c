
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* entries; } ;
struct TYPE_6__ {int status; TYPE_2__ sim_priv; } ;
union ccb {TYPE_3__ ccb_h; } ;
struct aac_softc {int aac_dev; } ;
struct aac_event {int ev_type; } ;
struct aac_cam {int sim; } ;
struct TYPE_4__ {struct aac_cam* ptr; } ;



 int CAM_REQUEUE_REQ ;
 int M_AACCAM ;
 int device_printf (int ,char*,int) ;
 int free (struct aac_event*,int ) ;
 int xpt_done (union ccb*) ;
 int xpt_release_simq (int ,int) ;

__attribute__((used)) static void
aac_cam_event(struct aac_softc *sc, struct aac_event *event, void *arg)
{
 union ccb *ccb;
 struct aac_cam *camsc;

 switch (event->ev_type) {
 case 128:
  ccb = arg;
  camsc = ccb->ccb_h.sim_priv.entries[0].ptr;
  free(event, M_AACCAM);
  xpt_release_simq(camsc->sim, 1);
  ccb->ccb_h.status = CAM_REQUEUE_REQ;
  xpt_done(ccb);
  break;
 default:
  device_printf(sc->aac_dev, "unknown event %d in aac_cam\n",
      event->ev_type);
  break;
 }
}
