
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct targ_softc {int state; int path; } ;
typedef scalar_t__ cam_status ;


 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_PERIPH ;
 scalar_t__ CAM_REQ_CMP ;
 int TARG_STATE_LUN_ENABLED ;
 int abort_all_pending (struct targ_softc*) ;
 int printf (char*,scalar_t__) ;
 scalar_t__ targendislun (int ,int ,int ,int ) ;

__attribute__((used)) static cam_status
targdisable(struct targ_softc *softc)
{
 cam_status status;

 if ((softc->state & TARG_STATE_LUN_ENABLED) == 0)
  return (CAM_REQ_CMP);

 CAM_DEBUG(softc->path, CAM_DEBUG_PERIPH, ("targdisable\n"));


 abort_all_pending(softc);


 status = targendislun(softc->path, 0,
                     0, 0);
 if (status == CAM_REQ_CMP)
  softc->state &= ~TARG_STATE_LUN_ENABLED;
 else
  printf("Disable lun failed, status %#x\n", status);

 return (status);
}
