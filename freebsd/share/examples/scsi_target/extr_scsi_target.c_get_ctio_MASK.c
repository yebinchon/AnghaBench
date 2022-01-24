#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct ctio_descr* sival_ptr; } ;
struct sigevent {TYPE_3__ sigev_value; int /*<<< orphan*/  sigev_notify_kqueue; int /*<<< orphan*/  sigev_notify; } ;
struct TYPE_5__ {struct sigevent aio_sigevent; int /*<<< orphan*/  aio_fildes; int /*<<< orphan*/ * aio_buf; } ;
struct TYPE_4__ {int retry_count; struct ctio_descr* targ_descr; int /*<<< orphan*/  timeout; int /*<<< orphan*/  func_code; } ;
struct ctio_descr {TYPE_2__ aiocb; int /*<<< orphan*/ * buf; TYPE_1__ ccb_h; int /*<<< orphan*/ * data_ptr; } ;
struct ccb_scsiio {TYPE_2__ aiocb; int /*<<< orphan*/ * buf; TYPE_1__ ccb_h; int /*<<< orphan*/ * data_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_TIME_INFINITY ; 
 scalar_t__ MAX_CTIOS ; 
 int /*<<< orphan*/  SIGEV_KEVENT ; 
 int /*<<< orphan*/  XPT_CONT_TARGET_IO ; 
 int buf_size ; 
 int /*<<< orphan*/  file_fd ; 
 int /*<<< orphan*/  FUNC0 (struct ctio_descr*) ; 
 int /*<<< orphan*/  kq_fd ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 scalar_t__ num_ctios ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static struct ccb_scsiio *
FUNC4()
{
	struct ccb_scsiio *ctio;
	struct ctio_descr *c_descr;
	struct sigevent *se;

	if (num_ctios == MAX_CTIOS) {
		FUNC3("at CTIO max");
		return (NULL);
	}

	ctio = (struct ccb_scsiio *)FUNC1(sizeof(*ctio));
	if (ctio == NULL) {
		FUNC2("malloc CTIO");
		return (NULL);
	}
	c_descr = (struct ctio_descr *)FUNC1(sizeof(*c_descr));
	if (c_descr == NULL) {
		FUNC0(ctio);
		FUNC2("malloc ctio_descr");
		return (NULL);
	}
	c_descr->buf = FUNC1(buf_size);
	if (c_descr->buf == NULL) {
		FUNC0(c_descr);
		FUNC0(ctio);
		FUNC2("malloc backing store");
		return (NULL);
	}
	num_ctios++;

	/* Initialize CTIO, CTIO descr, and AIO */
	ctio->ccb_h.func_code = XPT_CONT_TARGET_IO;
	ctio->ccb_h.retry_count = 2;
	ctio->ccb_h.timeout = CAM_TIME_INFINITY;
	ctio->data_ptr = c_descr->buf;
	ctio->ccb_h.targ_descr = c_descr;
	c_descr->aiocb.aio_buf = c_descr->buf;
	c_descr->aiocb.aio_fildes = file_fd;
	se = &c_descr->aiocb.aio_sigevent;
	se->sigev_notify = SIGEV_KEVENT;
	se->sigev_notify_kqueue = kq_fd;
	se->sigev_value.sival_ptr = ctio;

	return (ctio);
}