
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct TYPE_2__ {scalar_t__ status; int path; int func_code; } ;
struct ccb_setasync {int event_enable; TYPE_1__ ccb_h; void* callback_arg; int * callback; } ;
struct cam_path {int dummy; } ;
typedef scalar_t__ cam_status ;
typedef int ac_callback_t ;


 int AC_FOUND_DEVICE ;
 int AC_PATH_REGISTERED ;
 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int CAM_LUN_WILDCARD ;
 int CAM_PRIORITY_NORMAL ;
 scalar_t__ CAM_REQ_CMP ;
 int CAM_TARGET_WILDCARD ;
 int CAM_XPT_PATH_ID ;
 int XPT_SASYNC_CB ;
 int xpt_action (union ccb*) ;
 scalar_t__ xpt_create_path (struct cam_path**,int *,int ,int ,int ) ;
 int xpt_for_all_busses (int ,struct ccb_setasync*) ;
 int xpt_for_all_devices (int ,struct ccb_setasync*) ;
 int xpt_free_path (struct cam_path*) ;
 int xpt_path_lock (struct cam_path*) ;
 int xpt_path_unlock (struct cam_path*) ;
 int xpt_setup_ccb (TYPE_1__*,struct cam_path*,int ) ;
 int xptsetasyncbusfunc ;
 int xptsetasyncfunc ;

cam_status
xpt_register_async(int event, ac_callback_t *cbfunc, void *cbarg,
     struct cam_path *path)
{
 struct ccb_setasync csa;
 cam_status status;
 int xptpath = 0;

 if (path == ((void*)0)) {
  status = xpt_create_path(&path, ((void*)0), CAM_XPT_PATH_ID,
      CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD);
  if (status != CAM_REQ_CMP)
   return (status);
  xpt_path_lock(path);
  xptpath = 1;
 }

 xpt_setup_ccb(&csa.ccb_h, path, CAM_PRIORITY_NORMAL);
 csa.ccb_h.func_code = XPT_SASYNC_CB;
 csa.event_enable = event;
 csa.callback = cbfunc;
 csa.callback_arg = cbarg;
 xpt_action((union ccb *)&csa);
 status = csa.ccb_h.status;

 CAM_DEBUG(csa.ccb_h.path, CAM_DEBUG_TRACE,
     ("xpt_register_async: func %p\n", cbfunc));

 if (xptpath) {
  xpt_path_unlock(path);
  xpt_free_path(path);
 }

 if ((status == CAM_REQ_CMP) &&
     (csa.event_enable & AC_FOUND_DEVICE)) {




  xpt_for_all_devices(xptsetasyncfunc, &csa);
 }
 if ((status == CAM_REQ_CMP) &&
     (csa.event_enable & AC_PATH_REGISTERED)) {




  xpt_for_all_busses(xptsetasyncbusfunc, &csa);
 }

 return (status);
}
