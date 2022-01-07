
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int flags; } ;
union ccb {TYPE_3__ crcn; } ;
struct cam_periph {TYPE_2__* path; scalar_t__ softc; } ;
struct TYPE_9__ {int flags; int request_ccbs; } ;
typedef TYPE_4__ probe_softc ;
struct TYPE_7__ {TYPE_1__* device; } ;
struct TYPE_6__ {int flags; scalar_t__ protocol; } ;


 int CAM_DEV_UNCONFIGURED ;
 int CAM_EXPECT_INQ_CHANGE ;
 int CAM_PRIORITY_XPT ;
 int PROBE_IDENTIFY ;
 int PROBE_NO_ANNOUNCE ;
 int PROBE_RESET ;
 int PROBE_SET_ACTION (TYPE_4__*,int ) ;
 scalar_t__ PROTO_SATAPM ;
 scalar_t__ PROTO_SEMB ;
 scalar_t__ TAILQ_FIRST (int *) ;
 int xpt_schedule (struct cam_periph*,int ) ;

__attribute__((used)) static void
probeschedule(struct cam_periph *periph)
{
 union ccb *ccb;
 probe_softc *softc;

 softc = (probe_softc *)periph->softc;
 ccb = (union ccb *)TAILQ_FIRST(&softc->request_ccbs);

 if ((periph->path->device->flags & CAM_DEV_UNCONFIGURED) ||
     periph->path->device->protocol == PROTO_SATAPM ||
     periph->path->device->protocol == PROTO_SEMB)
  PROBE_SET_ACTION(softc, PROBE_RESET);
 else
  PROBE_SET_ACTION(softc, PROBE_IDENTIFY);

 if (ccb->crcn.flags & CAM_EXPECT_INQ_CHANGE)
  softc->flags |= PROBE_NO_ANNOUNCE;
 else
  softc->flags &= ~PROBE_NO_ANNOUNCE;

 xpt_schedule(periph, CAM_PRIORITY_XPT);
}
