
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdvi_softc {scalar_t__ control; struct amdvi_softc* ctrl; } ;
struct amdvi_ctrl {scalar_t__ control; struct amdvi_ctrl* ctrl; } ;


 int KASSERT (struct amdvi_softc*,char*) ;
 struct amdvi_softc* device_get_softc (int ) ;
 int ivhd_count ;
 int * ivhd_devs ;

__attribute__((used)) static void
amdvi_disable(void)
{
 struct amdvi_ctrl *ctrl;
 struct amdvi_softc *softc;
 int i;

 for (i = 0; i < ivhd_count; i++) {
  softc = device_get_softc(ivhd_devs[i]);
  KASSERT(softc, ("softc is NULL\n"));
  ctrl = softc->ctrl;
  KASSERT(ctrl, ("ctrl is NULL\n"));

  ctrl->control = 0;
 }
}
