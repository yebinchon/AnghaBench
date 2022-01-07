
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct targ_softc {int * path; int * periph; int abort_queue; int user_ccb_queue; } ;
struct targ_cmd_descr {int dummy; } ;
typedef struct targ_cmd_descr ccb_hdr ;
struct cam_periph {int * softc; } ;
struct TYPE_2__ {int tqe; } ;


 int M_TARG ;
 struct targ_cmd_descr* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct targ_cmd_descr*,int ) ;
 int free (struct targ_cmd_descr*,int ) ;
 TYPE_1__ periph_links ;
 int targfreeccb (struct targ_softc*,union ccb*) ;
 int tqe ;

__attribute__((used)) static void
targdtor(struct cam_periph *periph)
{
 struct targ_softc *softc;
 struct ccb_hdr *ccb_h;
 struct targ_cmd_descr *descr;

 softc = (struct targ_softc *)periph->softc;






 while ((ccb_h = TAILQ_FIRST(&softc->user_ccb_queue)) != ((void*)0)) {
  TAILQ_REMOVE(&softc->user_ccb_queue, ccb_h, periph_links.tqe);
  targfreeccb(softc, (union ccb *)ccb_h);
 }
 while ((descr = TAILQ_FIRST(&softc->abort_queue)) != ((void*)0)) {
  TAILQ_REMOVE(&softc->abort_queue, descr, tqe);
  free(descr, M_TARG);
 }

 softc->periph = ((void*)0);
 softc->path = ((void*)0);
 periph->softc = ((void*)0);
}
