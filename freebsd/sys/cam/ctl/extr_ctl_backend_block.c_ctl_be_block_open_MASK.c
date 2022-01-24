#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nameidata {TYPE_1__* ni_vp; } ;
struct ctl_lun_req {int /*<<< orphan*/  error_str; } ;
struct ctl_be_lun {scalar_t__ lun_type; void* serseq; int /*<<< orphan*/  options; int /*<<< orphan*/  flags; } ;
struct ctl_be_block_lun {char* dev_path; scalar_t__ dispatch; TYPE_1__* vn; struct ctl_be_lun cbe_lun; } ;
struct TYPE_3__ {scalar_t__ v_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_LUN_FLAG_READONLY ; 
 void* CTL_LUN_SERSEQ_OFF ; 
 void* CTL_LUN_SERSEQ_ON ; 
 void* CTL_LUN_SERSEQ_READ ; 
 int EACCES ; 
 int EINVAL ; 
 int EROFS ; 
 int /*<<< orphan*/  FOLLOW ; 
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  M_CTLBLK ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ T_DIRECT ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ VREG ; 
 int /*<<< orphan*/  FUNC3 (char**,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ctl_be_block_lun*) ; 
 scalar_t__ ctl_be_block_dispatch_dev ; 
 int FUNC5 (struct ctl_be_block_lun*,struct ctl_lun_req*) ; 
 int FUNC6 (struct ctl_be_block_lun*,struct ctl_lun_req*) ; 
 int /*<<< orphan*/  curthread ; 
 char* FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/ * rootvnode ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*,...) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 
 char* FUNC12 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_1__*,int*) ; 
 int FUNC14 (struct nameidata*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(struct ctl_be_block_lun *be_lun, struct ctl_lun_req *req)
{
	struct ctl_be_lun *cbe_lun = &be_lun->cbe_lun;
	struct nameidata nd;
	const char	*value;
	int		 error, flags;

	error = 0;
	if (rootvnode == NULL) {
		FUNC10(req->error_str, sizeof(req->error_str),
			 "Root filesystem is not mounted");
		return (1);
	}
	FUNC9();

	value = FUNC7(cbe_lun->options, "file", NULL);
	if (value == NULL) {
		FUNC10(req->error_str, sizeof(req->error_str),
			 "no file argument specified");
		return (1);
	}
	FUNC8(be_lun->dev_path, M_CTLBLK);
	be_lun->dev_path = FUNC12(value, M_CTLBLK);

	flags = FREAD;
	value = FUNC7(cbe_lun->options, "readonly", NULL);
	if (value != NULL) {
		if (FUNC11(value, "on") != 0)
			flags |= FWRITE;
	} else if (cbe_lun->lun_type == T_DIRECT)
		flags |= FWRITE;

again:
	FUNC1(&nd, LOOKUP, FOLLOW, UIO_SYSSPACE, be_lun->dev_path, curthread);
	error = FUNC14(&nd, &flags, 0, NULL);
	if ((error == EROFS || error == EACCES) && (flags & FWRITE)) {
		flags &= ~FWRITE;
		goto again;
	}
	if (error) {
		/*
		 * This is the only reasonable guess we can make as far as
		 * path if the user doesn't give us a fully qualified path.
		 * If they want to specify a file, they need to specify the
		 * full path.
		 */
		if (be_lun->dev_path[0] != '/') {
			char *dev_name;

			FUNC3(&dev_name, M_CTLBLK, "/dev/%s",
				be_lun->dev_path);
			FUNC8(be_lun->dev_path, M_CTLBLK);
			be_lun->dev_path = dev_name;
			goto again;
		}
		FUNC10(req->error_str, sizeof(req->error_str),
		    "error opening %s: %d", be_lun->dev_path, error);
		return (error);
	}
	if (flags & FWRITE)
		cbe_lun->flags &= ~CTL_LUN_FLAG_READONLY;
	else
		cbe_lun->flags |= CTL_LUN_FLAG_READONLY;

	FUNC0(&nd, NDF_ONLY_PNBUF);
	be_lun->vn = nd.ni_vp;

	/* We only support disks and files. */
	if (FUNC13(be_lun->vn, &error)) {
		error = FUNC5(be_lun, req);
	} else if (be_lun->vn->v_type == VREG) {
		error = FUNC6(be_lun, req);
	} else {
		error = EINVAL;
		FUNC10(req->error_str, sizeof(req->error_str),
			 "%s is not a disk or plain file", be_lun->dev_path);
	}
	FUNC2(be_lun->vn, 0);

	if (error != 0)
		FUNC4(be_lun);
	cbe_lun->serseq = CTL_LUN_SERSEQ_OFF;
	if (be_lun->dispatch != ctl_be_block_dispatch_dev)
		cbe_lun->serseq = CTL_LUN_SERSEQ_READ;
	value = FUNC7(cbe_lun->options, "serseq", NULL);
	if (value != NULL && FUNC11(value, "on") == 0)
		cbe_lun->serseq = CTL_LUN_SERSEQ_ON;
	else if (value != NULL && FUNC11(value, "read") == 0)
		cbe_lun->serseq = CTL_LUN_SERSEQ_READ;
	else if (value != NULL && FUNC11(value, "off") == 0)
		cbe_lun->serseq = CTL_LUN_SERSEQ_OFF;
	return (0);
}