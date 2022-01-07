
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cd_softc {int flags; int toc; int state; } ;
struct cam_periph {scalar_t__ softc; } ;


 int CAM_PRIORITY_NORMAL ;
 int CD_FLAG_MEDIA_SCAN_ACT ;
 int CD_FLAG_MEDIA_WAIT ;
 int CD_FLAG_VALID_MEDIA ;
 int CD_STATE_MEDIA_PREVENT ;
 int EINVAL ;
 int PRIBIO ;
 int cam_periph_mtx (struct cam_periph*) ;
 int msleep (int *,int ,int ,char*,int ) ;
 int xpt_schedule (struct cam_periph*,int ) ;

__attribute__((used)) static int
cdcheckmedia(struct cam_periph *periph, int do_wait)
{
 struct cd_softc *softc;
 int error;

 softc = (struct cd_softc *)periph->softc;
 error = 0;

 if ((do_wait != 0)
  && ((softc->flags & CD_FLAG_MEDIA_WAIT) == 0)) {
  softc->flags |= CD_FLAG_MEDIA_WAIT;
 }
 if ((softc->flags & CD_FLAG_MEDIA_SCAN_ACT) == 0) {
  softc->state = CD_STATE_MEDIA_PREVENT;
  softc->flags |= CD_FLAG_MEDIA_SCAN_ACT;
  xpt_schedule(periph, CAM_PRIORITY_NORMAL);
 }

 if (do_wait == 0)
  goto bailout;

 error = msleep(&softc->toc, cam_periph_mtx(periph), PRIBIO,"cdmedia",0);

 if (error != 0)
  goto bailout;





 if ((softc->flags & CD_FLAG_VALID_MEDIA) == 0)
  error = EINVAL;
bailout:

 return (error);
}
