#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int async_arg_size; int /*<<< orphan*/ * async_arg_ptr; int /*<<< orphan*/  async_code; } ;
struct TYPE_8__ {TYPE_5__* path; int /*<<< orphan*/  func_code; int /*<<< orphan*/  flags; int /*<<< orphan*/  cbfcnp; } ;
union ccb {TYPE_2__ casync; TYPE_1__ ccb_h; } ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct cam_path {TYPE_4__* bus; TYPE_3__* device; } ;
struct TYPE_12__ {int /*<<< orphan*/ * periph; } ;
struct TYPE_11__ {int /*<<< orphan*/  sim; } ;
struct TYPE_10__ {scalar_t__ lun_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_TRACE ; 
 scalar_t__ CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_UNLOCKED ; 
 int /*<<< orphan*/  M_CAMXPT ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  XPT_ASYNC ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 union ccb* FUNC4 () ; 
 int /*<<< orphan*/  xpt_async_process ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_5__**,struct cam_path*) ; 
 int /*<<< orphan*/  FUNC8 (union ccb*) ; 
 int /*<<< orphan*/  FUNC9 (union ccb*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (struct cam_path*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct cam_path*,char*,int /*<<< orphan*/ ) ; 

void
FUNC14(u_int32_t async_code, struct cam_path *path, void *async_arg)
{
	union ccb *ccb;
	int size;

	ccb = FUNC4();
	if (ccb == NULL) {
		FUNC13(path, "Can't allocate CCB to send %s\n",
		    FUNC6(async_code));
		return;
	}

	if (FUNC7(&ccb->ccb_h.path, path) != CAM_REQ_CMP) {
		FUNC13(path, "Can't allocate path to send %s\n",
		    FUNC6(async_code));
		FUNC9(ccb);
		return;
	}
	ccb->ccb_h.path->periph = NULL;
	ccb->ccb_h.func_code = XPT_ASYNC;
	ccb->ccb_h.cbfcnp = xpt_async_process;
	ccb->ccb_h.flags |= CAM_UNLOCKED;
	ccb->casync.async_code = async_code;
	ccb->casync.async_arg_size = 0;
	size = FUNC5(async_code);
	FUNC0(ccb->ccb_h.path, CAM_DEBUG_TRACE,
	    ("xpt_async: func %#x %s aync_code %d %s\n",
		ccb->ccb_h.func_code,
		FUNC3(ccb->ccb_h.func_code),
		async_code,
		FUNC6(async_code)));
	if (size > 0 && async_arg != NULL) {
		ccb->casync.async_arg_ptr = FUNC1(size, M_CAMXPT, M_NOWAIT);
		if (ccb->casync.async_arg_ptr == NULL) {
			FUNC13(path, "Can't allocate argument to send %s\n",
			    FUNC6(async_code));
			FUNC10(ccb->ccb_h.path);
			FUNC9(ccb);
			return;
		}
		FUNC2(ccb->casync.async_arg_ptr, async_arg, size);
		ccb->casync.async_arg_size = size;
	} else if (size < 0) {
		ccb->casync.async_arg_ptr = async_arg;
		ccb->casync.async_arg_size = size;
	}
	if (path->device != NULL && path->device->lun_id != CAM_LUN_WILDCARD)
		FUNC11(path, 1);
	else
		FUNC12(path->bus->sim, 1);
	FUNC8(ccb);
}