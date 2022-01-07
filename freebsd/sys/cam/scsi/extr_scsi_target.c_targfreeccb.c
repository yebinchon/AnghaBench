
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int func_code; union ccb* targ_descr; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct targ_softc {int dummy; } ;


 int CAM_DEBUG_PERIPH ;
 int CAM_DEBUG_PRINT (int ,char*) ;
 int M_TARG ;

 int XPT_FC_IS_QUEUED (union ccb*) ;


 int free (union ccb*,int ) ;
 int xpt_release_ccb (union ccb*) ;

__attribute__((used)) static void
targfreeccb(struct targ_softc *softc, union ccb *ccb)
{
 CAM_DEBUG_PRINT(CAM_DEBUG_PERIPH, ("targfreeccb descr %p and\n",
   ccb->ccb_h.targ_descr));
 free(ccb->ccb_h.targ_descr, M_TARG);

 switch (ccb->ccb_h.func_code) {
 case 130:
 case 128:
 case 129:
  CAM_DEBUG_PRINT(CAM_DEBUG_PERIPH, ("freeing ccb %p\n", ccb));
  free(ccb, M_TARG);
  break;
 default:

  if (XPT_FC_IS_QUEUED(ccb)) {
   CAM_DEBUG_PRINT(CAM_DEBUG_PERIPH,
     ("returning queued ccb %p\n", ccb));
   xpt_release_ccb(ccb);
  } else {
   CAM_DEBUG_PRINT(CAM_DEBUG_PERIPH,
     ("freeing ccb %p\n", ccb));
   free(ccb, M_TARG);
  }
  break;
 }
}
