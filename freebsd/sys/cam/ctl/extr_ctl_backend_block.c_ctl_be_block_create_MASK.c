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
typedef  int /*<<< orphan*/  tmpstr ;
struct ctl_lun_create_params {int flags; int device_type; int lun_size_bytes; int blocksize_bytes; char* serial_num; char* device_id; scalar_t__ req_lun_id; } ;
struct TYPE_3__ {struct ctl_lun_create_params create; } ;
struct ctl_lun_req {int /*<<< orphan*/  status; int /*<<< orphan*/  error_str; int /*<<< orphan*/  args_nvl; TYPE_1__ reqdata; } ;
struct ctl_be_lun {int lun_type; int flags; int blocksize; int maxlba; int /*<<< orphan*/  options; scalar_t__ lun_id; scalar_t__ device_id; scalar_t__ serial_num; int /*<<< orphan*/ * be; int /*<<< orphan*/  lun_config_status; int /*<<< orphan*/  lun_shutdown; scalar_t__ req_lun_id; struct ctl_be_block_lun* be_lun; } ;
struct ctl_be_block_softc {int num_luns; int /*<<< orphan*/  lock; int /*<<< orphan*/  lun_list; } ;
struct ctl_be_block_lun {int flags; int size_bytes; int size_blocks; int num_threads; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/ * lun_zone; struct ctl_be_block_lun* dev_path; int /*<<< orphan*/ * io_taskqueue; int /*<<< orphan*/  disk_stats; struct ctl_be_lun cbe_lun; int /*<<< orphan*/  lunname; int /*<<< orphan*/  io_task; int /*<<< orphan*/ * vn; int /*<<< orphan*/  datamove_queue; int /*<<< orphan*/  config_write_queue; int /*<<< orphan*/  config_read_queue; int /*<<< orphan*/  input_queue; struct ctl_be_block_softc* softc; struct ctl_lun_create_params params; } ;
struct TYPE_4__ {int flags; scalar_t__ ha_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLBLK_MAX_SEG ; 
 int CTL_BE_BLOCK_LUN_CONFIG_ERR ; 
 int CTL_BE_BLOCK_LUN_UNCONFIGURED ; 
 int CTL_BE_BLOCK_LUN_WAITING ; 
 int CTL_FLAG_ACTIVE_SHELF ; 
 scalar_t__ CTL_HA_MODE_SER_ONLY ; 
 int /*<<< orphan*/  CTL_LUN_ERROR ; 
 int CTL_LUN_FLAG_DEVID ; 
 int CTL_LUN_FLAG_DEV_TYPE ; 
 int CTL_LUN_FLAG_ID_REQ ; 
 int CTL_LUN_FLAG_NO_MEDIA ; 
 int CTL_LUN_FLAG_PRIMARY ; 
 int CTL_LUN_FLAG_SERIAL_NUM ; 
 int /*<<< orphan*/  CTL_LUN_OK ; 
 int /*<<< orphan*/  CTL_LUN_WARNING ; 
 int /*<<< orphan*/  DEVSTAT_ALL_SUPPORTED ; 
 int /*<<< orphan*/  DEVSTAT_PRIORITY_OTHER ; 
 int DEVSTAT_TYPE_IF_OTHER ; 
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_CTLBLK ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PCATCH ; 
 int /*<<< orphan*/  PUSER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ctl_be_block_lun*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ctl_be_block_lun*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ctl_be_block_lun*) ; 
 int T_CDROM ; 
 int T_DIRECT ; 
 int cbb_num_threads ; 
 TYPE_2__* control_softc ; 
 int FUNC5 (struct ctl_be_lun*) ; 
 int /*<<< orphan*/  FUNC6 (struct ctl_be_block_lun*) ; 
 int /*<<< orphan*/  ctl_be_block_driver ; 
 int /*<<< orphan*/  ctl_be_block_lun ; 
 int /*<<< orphan*/  ctl_be_block_lun_config_status ; 
 int /*<<< orphan*/  ctl_be_block_lun_shutdown ; 
 int FUNC7 (struct ctl_be_block_lun*,struct ctl_lun_req*) ; 
 int /*<<< orphan*/  ctl_be_block_worker ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ctl_be_block_lun*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 struct ctl_be_block_lun* FUNC11 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct ctl_be_block_lun*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC21 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC23 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int FUNC26 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 
 int /*<<< orphan*/ * FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC29(struct ctl_be_block_softc *softc, struct ctl_lun_req *req)
{
	struct ctl_be_lun *cbe_lun;
	struct ctl_be_block_lun *be_lun;
	struct ctl_lun_create_params *params;
	char num_thread_str[16];
	char tmpstr[32];
	const char *value;
	int retval, num_threads;
	int tmp_num_threads;

	params = &req->reqdata.create;
	retval = 0;
	req->status = CTL_LUN_OK;

	be_lun = FUNC11(sizeof(*be_lun), M_CTLBLK, M_ZERO | M_WAITOK);
	cbe_lun = &be_lun->cbe_lun;
	cbe_lun->be_lun = be_lun;
	be_lun->params = req->reqdata.create;
	be_lun->softc = softc;
	FUNC1(&be_lun->input_queue);
	FUNC1(&be_lun->config_read_queue);
	FUNC1(&be_lun->config_write_queue);
	FUNC1(&be_lun->datamove_queue);
	FUNC20(be_lun->lunname, "cblk%d", softc->num_luns);
	FUNC14(&be_lun->io_lock, "cblk io lock", NULL, MTX_DEF);
	FUNC14(&be_lun->queue_lock, "cblk queue lock", NULL, MTX_DEF);
	cbe_lun->options = FUNC17(req->args_nvl);
	be_lun->lun_zone = FUNC27(be_lun->lunname, CTLBLK_MAX_SEG,
	    NULL, NULL, NULL, NULL, /*align*/ 0, /*flags*/0);
	if (be_lun->lun_zone == NULL) {
		FUNC19(req->error_str, sizeof(req->error_str),
			 "error allocating UMA zone");
		goto bailout_error;
	}

	if (params->flags & CTL_LUN_FLAG_DEV_TYPE)
		cbe_lun->lun_type = params->device_type;
	else
		cbe_lun->lun_type = T_DIRECT;
	be_lun->flags = CTL_BE_BLOCK_LUN_UNCONFIGURED;
	cbe_lun->flags = 0;
	value = FUNC9(cbe_lun->options, "ha_role", NULL);
	if (value != NULL) {
		if (FUNC21(value, "primary") == 0)
			cbe_lun->flags |= CTL_LUN_FLAG_PRIMARY;
	} else if (control_softc->flags & CTL_FLAG_ACTIVE_SHELF)
		cbe_lun->flags |= CTL_LUN_FLAG_PRIMARY;

	if (cbe_lun->lun_type == T_DIRECT ||
	    cbe_lun->lun_type == T_CDROM) {
		be_lun->size_bytes = params->lun_size_bytes;
		if (params->blocksize_bytes != 0)
			cbe_lun->blocksize = params->blocksize_bytes;
		else if (cbe_lun->lun_type == T_CDROM)
			cbe_lun->blocksize = 2048;
		else
			cbe_lun->blocksize = 512;
		be_lun->size_blocks = be_lun->size_bytes / cbe_lun->blocksize;
		cbe_lun->maxlba = (be_lun->size_blocks == 0) ?
		    0 : (be_lun->size_blocks - 1);

		if ((cbe_lun->flags & CTL_LUN_FLAG_PRIMARY) ||
		    control_softc->ha_mode == CTL_HA_MODE_SER_ONLY) {
			retval = FUNC7(be_lun, req);
			if (retval != 0) {
				retval = 0;
				req->status = CTL_LUN_WARNING;
			}
		}
		num_threads = cbb_num_threads;
	} else {
		num_threads = 1;
	}

	value = FUNC9(cbe_lun->options, "num_threads", NULL);
	if (value != NULL) {
		tmp_num_threads = FUNC23(value, NULL, 0);

		/*
		 * We don't let the user specify less than one
		 * thread, but hope he's clueful enough not to
		 * specify 1000 threads.
		 */
		if (tmp_num_threads < 1) {
			FUNC19(req->error_str, sizeof(req->error_str),
				 "invalid number of threads %s",
				 num_thread_str);
			goto bailout_error;
		}
		num_threads = tmp_num_threads;
	}

	if (be_lun->vn == NULL)
		cbe_lun->flags |= CTL_LUN_FLAG_NO_MEDIA;
	/* Tell the user the blocksize we ended up using */
	params->lun_size_bytes = be_lun->size_bytes;
	params->blocksize_bytes = cbe_lun->blocksize;
	if (params->flags & CTL_LUN_FLAG_ID_REQ) {
		cbe_lun->req_lun_id = params->req_lun_id;
		cbe_lun->flags |= CTL_LUN_FLAG_ID_REQ;
	} else
		cbe_lun->req_lun_id = 0;

	cbe_lun->lun_shutdown = ctl_be_block_lun_shutdown;
	cbe_lun->lun_config_status = ctl_be_block_lun_config_status;
	cbe_lun->be = &ctl_be_block_driver;

	if ((params->flags & CTL_LUN_FLAG_SERIAL_NUM) == 0) {
		FUNC19(tmpstr, sizeof(tmpstr), "MYSERIAL%04d",
			 softc->num_luns);
		FUNC22((char *)cbe_lun->serial_num, tmpstr,
			FUNC0(sizeof(cbe_lun->serial_num), sizeof(tmpstr)));

		/* Tell the user what we used for a serial number */
		FUNC22((char *)params->serial_num, tmpstr,
			FUNC0(sizeof(params->serial_num), sizeof(tmpstr)));
	} else { 
		FUNC22((char *)cbe_lun->serial_num, params->serial_num,
			FUNC0(sizeof(cbe_lun->serial_num),
			sizeof(params->serial_num)));
	}
	if ((params->flags & CTL_LUN_FLAG_DEVID) == 0) {
		FUNC19(tmpstr, sizeof(tmpstr), "MYDEVID%04d", softc->num_luns);
		FUNC22((char *)cbe_lun->device_id, tmpstr,
			FUNC0(sizeof(cbe_lun->device_id), sizeof(tmpstr)));

		/* Tell the user what we used for a device ID */
		FUNC22((char *)params->device_id, tmpstr,
			FUNC0(sizeof(params->device_id), sizeof(tmpstr)));
	} else {
		FUNC22((char *)cbe_lun->device_id, params->device_id,
			FUNC0(sizeof(cbe_lun->device_id),
			    sizeof(params->device_id)));
	}

	FUNC4(&be_lun->io_task, /*priority*/0, ctl_be_block_worker, be_lun);

	be_lun->io_taskqueue = FUNC24(be_lun->lunname, M_WAITOK,
	    taskqueue_thread_enqueue, /*context*/&be_lun->io_taskqueue);

	if (be_lun->io_taskqueue == NULL) {
		FUNC19(req->error_str, sizeof(req->error_str),
			 "unable to create taskqueue");
		goto bailout_error;
	}

	/*
	 * Note that we start the same number of threads by default for
	 * both the file case and the block device case.  For the file
	 * case, we need multiple threads to allow concurrency, because the
	 * vnode interface is designed to be a blocking interface.  For the
	 * block device case, ZFS zvols at least will block the caller's
	 * context in many instances, and so we need multiple threads to
	 * overcome that problem.  Other block devices don't need as many
	 * threads, but they shouldn't cause too many problems.
	 *
	 * If the user wants to just have a single thread for a block
	 * device, he can specify that when the LUN is created, or change
	 * the tunable/sysctl to alter the default number of threads.
	 */
	retval = FUNC26(&be_lun->io_taskqueue,
					 /*num threads*/num_threads,
					 /*priority*/PUSER,
					 /*thread name*/
					 "%s taskq", be_lun->lunname);

	if (retval != 0)
		goto bailout_error;

	be_lun->num_threads = num_threads;

	FUNC15(&softc->lock);
	softc->num_luns++;
	FUNC2(&softc->lun_list, be_lun, links);

	FUNC16(&softc->lock);

	retval = FUNC5(&be_lun->cbe_lun);
	if (retval != 0) {
		FUNC15(&softc->lock);
		FUNC3(&softc->lun_list, be_lun, ctl_be_block_lun,
			      links);
		softc->num_luns--;
		FUNC16(&softc->lock);
		FUNC19(req->error_str, sizeof(req->error_str),
			 "ctl_add_lun() returned error %d, see dmesg for "
			 "details", retval);
		retval = 0;
		goto bailout_error;
	}

	FUNC15(&softc->lock);

	/*
	 * Tell the config_status routine that we're waiting so it won't
	 * clean up the LUN in the event of an error.
	 */
	be_lun->flags |= CTL_BE_BLOCK_LUN_WAITING;

	while (be_lun->flags & CTL_BE_BLOCK_LUN_UNCONFIGURED) {
		retval = FUNC12(be_lun, &softc->lock, PCATCH, "ctlblk", 0);
		if (retval == EINTR)
			break;
	}
	be_lun->flags &= ~CTL_BE_BLOCK_LUN_WAITING;

	if (be_lun->flags & CTL_BE_BLOCK_LUN_CONFIG_ERR) {
		FUNC19(req->error_str, sizeof(req->error_str),
			 "LUN configuration error, see dmesg for details");
		FUNC3(&softc->lun_list, be_lun, ctl_be_block_lun,
			      links);
		softc->num_luns--;
		FUNC16(&softc->lock);
		goto bailout_error;
	} else {
		params->req_lun_id = cbe_lun->lun_id;
	}

	FUNC16(&softc->lock);

	be_lun->disk_stats = FUNC8("cbb", params->req_lun_id,
					       cbe_lun->blocksize,
					       DEVSTAT_ALL_SUPPORTED,
					       cbe_lun->lun_type
					       | DEVSTAT_TYPE_IF_OTHER,
					       DEVSTAT_PRIORITY_OTHER);

	return (retval);

bailout_error:
	req->status = CTL_LUN_ERROR;

	if (be_lun->io_taskqueue != NULL)
		FUNC25(be_lun->io_taskqueue);
	FUNC6(be_lun);
	if (be_lun->dev_path != NULL)
		FUNC10(be_lun->dev_path, M_CTLBLK);
	if (be_lun->lun_zone != NULL)
		FUNC28(be_lun->lun_zone);
	FUNC18(cbe_lun->options);
	FUNC13(&be_lun->queue_lock);
	FUNC13(&be_lun->io_lock);
	FUNC10(be_lun, M_CTLBLK);

	return (retval);
}