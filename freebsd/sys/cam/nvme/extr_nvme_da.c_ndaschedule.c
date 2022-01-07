
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nda_softc {scalar_t__ state; int cam_iosched; } ;
struct cam_periph {scalar_t__ softc; } ;


 scalar_t__ NDA_STATE_NORMAL ;
 int cam_iosched_schedule (int ,struct cam_periph*) ;

__attribute__((used)) static void
ndaschedule(struct cam_periph *periph)
{
 struct nda_softc *softc = (struct nda_softc *)periph->softc;

 if (softc->state != NDA_STATE_NORMAL)
  return;

 cam_iosched_schedule(softc->cam_iosched, periph);
}
