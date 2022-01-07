
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct targbh_softc {int init_level; int state; int immed_notify_slist; int * accept_tio_list; int work_queue; int pending_queue; } ;
struct cam_periph {struct targbh_softc* softc; } ;
typedef scalar_t__ cam_status ;


 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_REQ_CMP_ERR ;
 int M_NOWAIT ;
 int M_SCSIBH ;
 int SLIST_INIT (int *) ;
 int TAILQ_INIT (int *) ;
 int TARGBH_STATE_NORMAL ;
 int bzero (struct targbh_softc*,int) ;
 int cam_periph_invalidate (struct cam_periph*) ;
 scalar_t__ malloc (int,int ,int ) ;
 int printf (char*) ;
 scalar_t__ targbhenlun (struct cam_periph*) ;

__attribute__((used)) static cam_status
targbhctor(struct cam_periph *periph, void *arg)
{
 struct targbh_softc *softc;


 softc = (struct targbh_softc *)malloc(sizeof(*softc),
           M_SCSIBH, M_NOWAIT);
 if (softc == ((void*)0)) {
  printf("targctor: unable to malloc softc\n");
  return (CAM_REQ_CMP_ERR);
 }

 bzero(softc, sizeof(*softc));
 TAILQ_INIT(&softc->pending_queue);
 TAILQ_INIT(&softc->work_queue);
 softc->accept_tio_list = ((void*)0);
 SLIST_INIT(&softc->immed_notify_slist);
 softc->state = TARGBH_STATE_NORMAL;
 periph->softc = softc;
 softc->init_level++;

 if (targbhenlun(periph) != CAM_REQ_CMP)
  cam_periph_invalidate(periph);
 return (CAM_REQ_CMP);
}
