#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union ccb {int dummy; } ccb ;
struct TYPE_4__ {int status; int /*<<< orphan*/  path; void* func_code; } ;
struct ccb_dev_advinfo {char* buf; TYPE_2__ ccb_h; int /*<<< orphan*/  bufsiz; int /*<<< orphan*/  flags; void* buftype; } ;
struct cam_path {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  num_set; int /*<<< orphan*/  physpath; } ;
typedef  TYPE_1__ ses_setphyspath_callback_args_t ;
typedef  int /*<<< orphan*/  enc_softc_t ;
typedef  int /*<<< orphan*/  enc_element_t ;

/* Variables and functions */
 int CAM_DEV_QFRZN ; 
 int /*<<< orphan*/  CAM_PRIORITY_NORMAL ; 
 int CAM_REQ_CMP ; 
 int /*<<< orphan*/  CDAI_FLAG_NONE ; 
 int /*<<< orphan*/  CDAI_FLAG_STORE ; 
 void* CDAI_TYPE_PHYS_PATH ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  M_SCSIENC ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 void* XPT_DEV_ADVINFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (union ccb*) ; 
 int /*<<< orphan*/  FUNC7 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC8 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,struct cam_path*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(enc_softc_t *enc, enc_element_t *elm,
			 struct cam_path *path, void *arg)
{
	struct ccb_dev_advinfo cdai;
	ses_setphyspath_callback_args_t *args;
	char *old_physpath;

	args = (ses_setphyspath_callback_args_t *)arg;
	old_physpath = FUNC2(MAXPATHLEN, M_SCSIENC, M_WAITOK|M_ZERO);
	FUNC7(path);
	FUNC9(&cdai.ccb_h, path, CAM_PRIORITY_NORMAL);
	cdai.ccb_h.func_code = XPT_DEV_ADVINFO;
	cdai.buftype = CDAI_TYPE_PHYS_PATH;
	cdai.flags = CDAI_FLAG_NONE;
	cdai.bufsiz = MAXPATHLEN;
	cdai.buf = old_physpath;
	FUNC6((union ccb *)&cdai);
	if ((cdai.ccb_h.status & CAM_DEV_QFRZN) != 0)
		FUNC0(cdai.ccb_h.path, 0, 0, 0, FALSE);

	if (FUNC5(old_physpath, FUNC3(args->physpath)) != 0) {

		FUNC9(&cdai.ccb_h, path, CAM_PRIORITY_NORMAL);
		cdai.ccb_h.func_code = XPT_DEV_ADVINFO;
		cdai.buftype = CDAI_TYPE_PHYS_PATH;
		cdai.flags = CDAI_FLAG_STORE;
		cdai.bufsiz = FUNC4(args->physpath);
		cdai.buf = FUNC3(args->physpath);
		FUNC6((union ccb *)&cdai);
		if ((cdai.ccb_h.status & CAM_DEV_QFRZN) != 0)
			FUNC0(cdai.ccb_h.path, 0, 0, 0, FALSE);
		if (cdai.ccb_h.status == CAM_REQ_CMP)
			args->num_set++;
	}
	FUNC8(path);
	FUNC1(old_physpath, M_SCSIENC);
}