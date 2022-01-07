
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {scalar_t__ target_lun; TYPE_2__* path; } ;
union ccb {TYPE_4__ crcn; TYPE_3__ ccb_h; } ;
struct ccb_pathinq {int hba_inquiry; int hba_misc; } ;
struct cam_periph {int path; scalar_t__ softc; } ;
struct TYPE_11__ {int flags; int request_ccbs; } ;
typedef TYPE_5__ probe_softc ;
struct TYPE_8__ {TYPE_1__* device; } ;
struct TYPE_7__ {int flags; } ;


 int CAM_DEV_UNCONFIGURED ;
 int CAM_EXPECT_INQ_CHANGE ;
 int CAM_PRIORITY_XPT ;
 int PIM_EXTLUNS ;
 int PIM_NOBUSRESET ;
 int PI_SDTR_ABLE ;
 int PI_WIDE_16 ;
 int PI_WIDE_32 ;
 int PROBE_EXTLUN ;
 int PROBE_INQUIRY ;
 int PROBE_NO_ANNOUNCE ;
 int PROBE_SET_ACTION (TYPE_5__*,int ) ;
 int PROBE_TUR ;
 scalar_t__ TAILQ_FIRST (int *) ;
 int proberequestdefaultnegotiation (struct cam_periph*) ;
 int xpt_path_inq (struct ccb_pathinq*,int ) ;
 int xpt_schedule (struct cam_periph*,int ) ;

__attribute__((used)) static void
probeschedule(struct cam_periph *periph)
{
 struct ccb_pathinq cpi;
 union ccb *ccb;
 probe_softc *softc;

 softc = (probe_softc *)periph->softc;
 ccb = (union ccb *)TAILQ_FIRST(&softc->request_ccbs);

 xpt_path_inq(&cpi, periph->path);
 if (((ccb->ccb_h.path->device->flags & CAM_DEV_UNCONFIGURED) == 0)
  && (ccb->ccb_h.target_lun == 0)) {
  PROBE_SET_ACTION(softc, PROBE_TUR);
 } else if ((cpi.hba_inquiry & (PI_WIDE_32|PI_WIDE_16|PI_SDTR_ABLE)) != 0
       && (cpi.hba_misc & PIM_NOBUSRESET) != 0) {
  proberequestdefaultnegotiation(periph);
  PROBE_SET_ACTION(softc, PROBE_INQUIRY);
 } else {
  PROBE_SET_ACTION(softc, PROBE_INQUIRY);
 }

 if (ccb->crcn.flags & CAM_EXPECT_INQ_CHANGE)
  softc->flags |= PROBE_NO_ANNOUNCE;
 else
  softc->flags &= ~PROBE_NO_ANNOUNCE;

 if (cpi.hba_misc & PIM_EXTLUNS)
  softc->flags |= PROBE_EXTLUN;
 else
  softc->flags &= ~PROBE_EXTLUN;

 xpt_schedule(periph, CAM_PRIORITY_XPT);
}
