
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cd_softc {int flags; int toc; } ;
struct cam_periph {scalar_t__ softc; } ;


 int CD_FLAG_MEDIA_SCAN_ACT ;
 int CD_FLAG_MEDIA_WAIT ;
 int wakeup (int *) ;

__attribute__((used)) static void
cdmediaprobedone(struct cam_periph *periph)
{
 struct cd_softc *softc;

 softc = (struct cd_softc *)periph->softc;

 softc->flags &= ~CD_FLAG_MEDIA_SCAN_ACT;

 if ((softc->flags & CD_FLAG_MEDIA_WAIT) != 0) {
  softc->flags &= ~CD_FLAG_MEDIA_WAIT;
  wakeup(&softc->toc);
 }
}
