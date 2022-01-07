
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cd_softc {scalar_t__ state; int tur; scalar_t__ outstanding_cmds; int mediapoll_c; } ;
struct cam_periph {struct cd_softc* softc; } ;


 int CAM_PRIORITY_NORMAL ;
 scalar_t__ CD_STATE_NORMAL ;
 int callout_schedule (int *,int) ;
 scalar_t__ cam_periph_acquire (struct cam_periph*) ;
 int cd_poll_period ;
 int hz ;
 int xpt_schedule (struct cam_periph*,int ) ;

__attribute__((used)) static void
cdmediapoll(void *arg)
{
 struct cam_periph *periph = arg;
 struct cd_softc *softc = periph->softc;

 if (softc->state == CD_STATE_NORMAL && !softc->tur &&
     softc->outstanding_cmds == 0) {
  if (cam_periph_acquire(periph) == 0) {
   softc->tur = 1;
   xpt_schedule(periph, CAM_PRIORITY_NORMAL);
  }
 }

 if (cd_poll_period != 0)
  callout_schedule(&softc->mediapoll_c, cd_poll_period * hz);
}
