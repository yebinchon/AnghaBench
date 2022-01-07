
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xpt_opcode ;
struct TYPE_2__ {int * targ_descr; int cbfcnp; int func_code; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct targ_softc {int path; } ;


 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_PERIPH ;
 int M_NOWAIT ;
 int M_TARG ;
 int free (union ccb*,int ) ;
 union ccb* malloc (int,int ,int ) ;
 int targccblen (int ) ;
 int targdone ;
 int * targgetdescr (struct targ_softc*) ;
 int xpt_setup_ccb (TYPE_1__*,int ,int) ;

__attribute__((used)) static union ccb *
targgetccb(struct targ_softc *softc, xpt_opcode type, int priority)
{
 union ccb *ccb;
 int ccb_len;

 ccb_len = targccblen(type);
 ccb = malloc(ccb_len, M_TARG, M_NOWAIT);
 CAM_DEBUG(softc->path, CAM_DEBUG_PERIPH, ("getccb %p\n", ccb));
 if (ccb == ((void*)0)) {
  return (ccb);
 }
 xpt_setup_ccb(&ccb->ccb_h, softc->path, priority);
 ccb->ccb_h.func_code = type;
 ccb->ccb_h.cbfcnp = targdone;
 ccb->ccb_h.targ_descr = targgetdescr(softc);
 if (ccb->ccb_h.targ_descr == ((void*)0)) {
  free (ccb, M_TARG);
  ccb = ((void*)0);
 }
 return (ccb);
}
