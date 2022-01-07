
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct targ_softc {int state; scalar_t__ maxio; int * periph; } ;
struct TYPE_2__ {int status; } ;
struct ccb_pathinq {int target_sprt; scalar_t__ maxio; TYPE_1__ ccb_h; } ;
struct cam_periph {int unit_number; scalar_t__ softc; } ;
struct cam_path {int dummy; } ;
typedef int cam_status ;


 int CAM_FUNC_NOTAVAIL ;
 int CAM_LUN_ALRDY_ENA ;
 int CAM_PERIPH_BIO ;
 int CAM_REQ_CMP ;
 int CAM_STATUS_MASK ;
 scalar_t__ DFLTPHYS ;
 scalar_t__ MAXPHYS ;
 int PIT_PROCESSOR ;
 int TARG_STATE_LUN_ENABLED ;
 int cam_periph_alloc (int ,int *,int ,int ,char*,int ,struct cam_path*,int ,int ,struct targ_softc*) ;
 struct cam_periph* cam_periph_find (struct cam_path*,char*) ;
 int cam_periph_invalidate (int *) ;
 int panic (char*) ;
 int printf (char*,...) ;
 int targasync ;
 int targctor ;
 int targdtor ;
 int targendislun (struct cam_path*,int,int,int) ;
 int targstart ;
 int xpt_path_inq (struct ccb_pathinq*,struct cam_path*) ;

__attribute__((used)) static cam_status
targenable(struct targ_softc *softc, struct cam_path *path, int grp6_len,
    int grp7_len)
{
 struct cam_periph *periph;
 struct ccb_pathinq cpi;
 cam_status status;

 if ((softc->state & TARG_STATE_LUN_ENABLED) != 0)
  return (CAM_LUN_ALRDY_ENA);


 xpt_path_inq(&cpi, path);
 status = cpi.ccb_h.status & CAM_STATUS_MASK;
 if (status != CAM_REQ_CMP) {
  printf("pathinq failed, status %#x\n", status);
  goto enable_fail;
 }
 if ((cpi.target_sprt & PIT_PROCESSOR) == 0) {
  printf("controller does not support target mode\n");
  status = CAM_FUNC_NOTAVAIL;
  goto enable_fail;
 }
 if (cpi.maxio == 0)
  softc->maxio = DFLTPHYS;
 else if (cpi.maxio > MAXPHYS)
  softc->maxio = MAXPHYS;
 else
  softc->maxio = cpi.maxio;


 periph = cam_periph_find(path, "targ");
 if (periph != ((void*)0)) {
  struct targ_softc *del_softc;

  del_softc = (struct targ_softc *)periph->softc;
  if ((del_softc->state & TARG_STATE_LUN_ENABLED) == 0) {
   cam_periph_invalidate(del_softc->periph);
   del_softc->periph = ((void*)0);
  } else {
   printf("Requested path still in use by targ%d\n",
          periph->unit_number);
   status = CAM_LUN_ALRDY_ENA;
   goto enable_fail;
  }
 }


 status = cam_periph_alloc(targctor, ((void*)0), targdtor, targstart,
   "targ", CAM_PERIPH_BIO, path, targasync, 0, softc);
 if (status != CAM_REQ_CMP) {
  printf("cam_periph_alloc failed, status %#x\n", status);
  goto enable_fail;
 }


 if (cam_periph_find(path, "targ") == ((void*)0)) {
  panic("targenable: succeeded but no periph?");

 }


 status = targendislun(path, 1, grp6_len, grp7_len);
 if (status != CAM_REQ_CMP) {
  printf("enable lun failed, status %#x\n", status);
  goto enable_fail;
 }
 softc->state |= TARG_STATE_LUN_ENABLED;

enable_fail:
 return (status);
}
