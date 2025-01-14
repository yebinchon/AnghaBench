
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ status; void* cbfcnp; int func_code; int * ccb_descr; } ;
struct TYPE_5__ {int enable; scalar_t__ grp7_len; scalar_t__ grp6_len; } ;
union ccb {TYPE_2__ ccb_h; TYPE_1__ cel; } ;
struct targbh_softc {int flags; int immed_notify_slist; struct ccb_accept_tio* accept_tio_list; } ;
struct targbh_cmd_desc {struct ccb_accept_tio* atio_link; } ;
struct ccb_immediate_notify {TYPE_2__ ccb_h; } ;
struct ccb_accept_tio {TYPE_2__ ccb_h; } ;
struct cam_periph {int path; scalar_t__ softc; } ;
typedef scalar_t__ cam_status ;
struct TYPE_7__ {int sle; } ;


 int CAM_PRIORITY_NORMAL ;
 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_REQ_CMP_ERR ;
 scalar_t__ CAM_REQ_INPROG ;
 scalar_t__ CAM_RESRC_UNAVAIL ;
 int MAX_ACCEPT ;
 int M_NOWAIT ;
 int M_SCSIBH ;
 int SLIST_INSERT_HEAD (int *,TYPE_2__*,int ) ;
 int TARGBH_FLAG_LUN_ENABLED ;
 int XPT_ACCEPT_TARGET_IO ;
 int XPT_EN_LUN ;
 int XPT_IMMEDIATE_NOTIFY ;
 int free (struct ccb_accept_tio*,int ) ;
 scalar_t__ malloc (int,int ,int ) ;
 TYPE_3__ periph_links ;
 int * targbhallocdescr () ;
 int targbhdislun (struct cam_periph*) ;
 void* targbhdone ;
 int xpt_action (union ccb*) ;
 int xpt_print (int ,char*,scalar_t__) ;
 int xpt_setup_ccb (TYPE_2__*,int ,int ) ;

__attribute__((used)) static cam_status
targbhenlun(struct cam_periph *periph)
{
 union ccb immed_ccb;
 struct targbh_softc *softc;
 cam_status status;
 int i;

 softc = (struct targbh_softc *)periph->softc;

 if ((softc->flags & TARGBH_FLAG_LUN_ENABLED) != 0)
  return (CAM_REQ_CMP);

 xpt_setup_ccb(&immed_ccb.ccb_h, periph->path, CAM_PRIORITY_NORMAL);
 immed_ccb.ccb_h.func_code = XPT_EN_LUN;


 immed_ccb.cel.grp6_len = 0;
 immed_ccb.cel.grp7_len = 0;
 immed_ccb.cel.enable = 1;
 xpt_action(&immed_ccb);
 status = immed_ccb.ccb_h.status;
 if (status != CAM_REQ_CMP) {
  xpt_print(periph->path,
      "targbhenlun - Enable Lun Rejected with status 0x%x\n",
      status);
  return (status);
 }

 softc->flags |= TARGBH_FLAG_LUN_ENABLED;





 for (i = 0; i < MAX_ACCEPT; i++) {
  struct ccb_accept_tio *atio;

  atio = (struct ccb_accept_tio*)malloc(sizeof(*atio), M_SCSIBH,
            M_NOWAIT);
  if (atio == ((void*)0)) {
   status = CAM_RESRC_UNAVAIL;
   break;
  }

  atio->ccb_h.ccb_descr = targbhallocdescr();

  if (atio->ccb_h.ccb_descr == ((void*)0)) {
   free(atio, M_SCSIBH);
   status = CAM_RESRC_UNAVAIL;
   break;
  }

  xpt_setup_ccb(&atio->ccb_h, periph->path, CAM_PRIORITY_NORMAL);
  atio->ccb_h.func_code = XPT_ACCEPT_TARGET_IO;
  atio->ccb_h.cbfcnp = targbhdone;
  ((struct targbh_cmd_desc*)atio->ccb_h.ccb_descr)->atio_link =
      softc->accept_tio_list;
  softc->accept_tio_list = atio;
  xpt_action((union ccb *)atio);
  status = atio->ccb_h.status;
  if (status != CAM_REQ_INPROG)
   break;
 }

 if (i == 0) {
  xpt_print(periph->path,
      "targbhenlun - Could not allocate accept tio CCBs: status "
      "= 0x%x\n", status);
  targbhdislun(periph);
  return (CAM_REQ_CMP_ERR);
 }





 for (i = 0; i < MAX_ACCEPT; i++) {
  struct ccb_immediate_notify *inot;

  inot = (struct ccb_immediate_notify*)malloc(sizeof(*inot),
       M_SCSIBH, M_NOWAIT);

  if (inot == ((void*)0)) {
   status = CAM_RESRC_UNAVAIL;
   break;
  }

  xpt_setup_ccb(&inot->ccb_h, periph->path, CAM_PRIORITY_NORMAL);
  inot->ccb_h.func_code = XPT_IMMEDIATE_NOTIFY;
  inot->ccb_h.cbfcnp = targbhdone;
  SLIST_INSERT_HEAD(&softc->immed_notify_slist, &inot->ccb_h,
      periph_links.sle);
  xpt_action((union ccb *)inot);
  status = inot->ccb_h.status;
  if (status != CAM_REQ_INPROG)
   break;
 }

 if (i == 0) {
  xpt_print(periph->path,
      "targbhenlun - Could not allocate immediate notify "
      "CCBs: status = 0x%x\n", status);
  targbhdislun(periph);
  return (CAM_REQ_CMP_ERR);
 }

 return (CAM_REQ_CMP);
}
