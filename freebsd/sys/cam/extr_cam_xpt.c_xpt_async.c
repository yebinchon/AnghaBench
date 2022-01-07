
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int async_arg_size; int * async_arg_ptr; int async_code; } ;
struct TYPE_8__ {TYPE_5__* path; int func_code; int flags; int cbfcnp; } ;
union ccb {TYPE_2__ casync; TYPE_1__ ccb_h; } ;
typedef int u_int32_t ;
struct cam_path {TYPE_4__* bus; TYPE_3__* device; } ;
struct TYPE_12__ {int * periph; } ;
struct TYPE_11__ {int sim; } ;
struct TYPE_10__ {scalar_t__ lun_id; } ;


 int CAM_DEBUG (TYPE_5__*,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 scalar_t__ CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 int CAM_UNLOCKED ;
 int M_CAMXPT ;
 int M_NOWAIT ;
 int XPT_ASYNC ;
 int * malloc (int,int ,int ) ;
 int memcpy (int *,void*,int) ;
 int xpt_action_name (int ) ;
 union ccb* xpt_alloc_ccb_nowait () ;
 int xpt_async_process ;
 int xpt_async_size (int ) ;
 int xpt_async_string (int ) ;
 scalar_t__ xpt_clone_path (TYPE_5__**,struct cam_path*) ;
 int xpt_done (union ccb*) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_free_path (TYPE_5__*) ;
 int xpt_freeze_devq (struct cam_path*,int) ;
 int xpt_freeze_simq (int ,int) ;
 int xpt_print (struct cam_path*,char*,int ) ;

void
xpt_async(u_int32_t async_code, struct cam_path *path, void *async_arg)
{
 union ccb *ccb;
 int size;

 ccb = xpt_alloc_ccb_nowait();
 if (ccb == ((void*)0)) {
  xpt_print(path, "Can't allocate CCB to send %s\n",
      xpt_async_string(async_code));
  return;
 }

 if (xpt_clone_path(&ccb->ccb_h.path, path) != CAM_REQ_CMP) {
  xpt_print(path, "Can't allocate path to send %s\n",
      xpt_async_string(async_code));
  xpt_free_ccb(ccb);
  return;
 }
 ccb->ccb_h.path->periph = ((void*)0);
 ccb->ccb_h.func_code = XPT_ASYNC;
 ccb->ccb_h.cbfcnp = xpt_async_process;
 ccb->ccb_h.flags |= CAM_UNLOCKED;
 ccb->casync.async_code = async_code;
 ccb->casync.async_arg_size = 0;
 size = xpt_async_size(async_code);
 CAM_DEBUG(ccb->ccb_h.path, CAM_DEBUG_TRACE,
     ("xpt_async: func %#x %s aync_code %d %s\n",
  ccb->ccb_h.func_code,
  xpt_action_name(ccb->ccb_h.func_code),
  async_code,
  xpt_async_string(async_code)));
 if (size > 0 && async_arg != ((void*)0)) {
  ccb->casync.async_arg_ptr = malloc(size, M_CAMXPT, M_NOWAIT);
  if (ccb->casync.async_arg_ptr == ((void*)0)) {
   xpt_print(path, "Can't allocate argument to send %s\n",
       xpt_async_string(async_code));
   xpt_free_path(ccb->ccb_h.path);
   xpt_free_ccb(ccb);
   return;
  }
  memcpy(ccb->casync.async_arg_ptr, async_arg, size);
  ccb->casync.async_arg_size = size;
 } else if (size < 0) {
  ccb->casync.async_arg_ptr = async_arg;
  ccb->casync.async_arg_size = size;
 }
 if (path->device != ((void*)0) && path->device->lun_id != CAM_LUN_WILDCARD)
  xpt_freeze_devq(path, 1);
 else
  xpt_freeze_simq(path->bus->sim, 1);
 xpt_done(ccb);
}
