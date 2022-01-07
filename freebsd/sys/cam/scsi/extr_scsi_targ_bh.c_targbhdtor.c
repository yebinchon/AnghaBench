
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct targbh_softc {int init_level; int state; } ;
struct cam_periph {scalar_t__ softc; } ;


 int M_SCSIBH ;
 int PRIBIO ;
 int TARGBH_STATE_TEARDOWN ;
 int cam_periph_sleep (struct cam_periph*,struct targbh_softc*,int ,char*,int) ;
 int free (struct targbh_softc*,int ) ;
 int hz ;
 int panic (char*) ;
 int targbhdislun (struct cam_periph*) ;

__attribute__((used)) static void
targbhdtor(struct cam_periph *periph)
{
 struct targbh_softc *softc;

 softc = (struct targbh_softc *)periph->softc;

 softc->state = TARGBH_STATE_TEARDOWN;

 targbhdislun(periph);

 switch (softc->init_level) {
 case 0:
  panic("targdtor - impossible init level");
 case 1:

 default:

  cam_periph_sleep(periph, softc, PRIBIO, "targbh", hz/2);
  free(softc, M_SCSIBH);
  break;
 }
}
