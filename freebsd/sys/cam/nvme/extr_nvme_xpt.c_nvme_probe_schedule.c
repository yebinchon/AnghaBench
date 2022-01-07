
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
union ccb {TYPE_1__ crcn; } ;
struct cam_periph {scalar_t__ softc; } ;
struct TYPE_5__ {int flags; int request_ccbs; } ;
typedef TYPE_2__ nvme_probe_softc ;


 int CAM_EXPECT_INQ_CHANGE ;
 int CAM_PRIORITY_XPT ;
 int NVME_PROBE_IDENTIFY_CD ;
 int NVME_PROBE_NO_ANNOUNCE ;
 int NVME_PROBE_SET_ACTION (TYPE_2__*,int ) ;
 scalar_t__ TAILQ_FIRST (int *) ;
 int xpt_schedule (struct cam_periph*,int ) ;

__attribute__((used)) static void
nvme_probe_schedule(struct cam_periph *periph)
{
 union ccb *ccb;
 nvme_probe_softc *softc;

 softc = (nvme_probe_softc *)periph->softc;
 ccb = (union ccb *)TAILQ_FIRST(&softc->request_ccbs);

 NVME_PROBE_SET_ACTION(softc, NVME_PROBE_IDENTIFY_CD);

 if (ccb->crcn.flags & CAM_EXPECT_INQ_CHANGE)
  softc->flags |= NVME_PROBE_NO_ANNOUNCE;
 else
  softc->flags &= ~NVME_PROBE_NO_ANNOUNCE;

 xpt_schedule(periph, CAM_PRIORITY_XPT);
}
