#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
union ctl_io {int /*<<< orphan*/  scsiio; } ;
struct mount {int dummy; } ;
struct ctl_be_block_lun {int /*<<< orphan*/  io_lock; TYPE_2__* vn; } ;
struct ctl_be_block_io {int /*<<< orphan*/  ds_t0; int /*<<< orphan*/  ds_trans_type; int /*<<< orphan*/  ds_tag_type; int /*<<< orphan*/  io_len; TYPE_1__* lun; scalar_t__ io_arg; union ctl_io* io; } ;
struct TYPE_7__ {struct mount* v_mount; } ;
struct TYPE_6__ {int /*<<< orphan*/  disk_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 int /*<<< orphan*/  MNT_NOWAIT ; 
 scalar_t__ FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  MNT_WAIT ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_WAIT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ctl_be_block_io*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct mount*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,struct mount**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(struct ctl_be_block_lun *be_lun,
			struct ctl_be_block_io *beio)
{
	union ctl_io *io = beio->io;
	struct mount *mountpoint;
	int error, lock_flags;

	FUNC0("entered\n");

	FUNC4(&beio->ds_t0);
	FUNC10(&be_lun->io_lock);
	FUNC9(beio->lun->disk_stats, &beio->ds_t0);
	FUNC11(&be_lun->io_lock);

	(void) FUNC14(be_lun->vn, &mountpoint, V_WAIT);

	if (FUNC1(mountpoint) ||
	    ((mountpoint == NULL) && FUNC1(be_lun->vn->v_mount)))
		lock_flags = LK_SHARED;
	else
		lock_flags = LK_EXCLUSIVE;
	FUNC13(be_lun->vn, lock_flags | LK_RETRY);
	error = FUNC2(be_lun->vn, beio->io_arg ? MNT_NOWAIT : MNT_WAIT,
	    curthread);
	FUNC3(be_lun->vn, 0);

	FUNC12(mountpoint);

	FUNC10(&be_lun->io_lock);
	FUNC8(beio->lun->disk_stats, beio->io_len,
	    beio->ds_tag_type, beio->ds_trans_type,
	    /*now*/ NULL, /*then*/&beio->ds_t0);
	FUNC11(&be_lun->io_lock);

	if (error == 0)
		FUNC7(&io->scsiio);
	else {
		/* XXX KDM is there is a better error here? */
		FUNC6(&io->scsiio,
					 /*sks_valid*/ 1,
					 /*retry_count*/ 0xbad1);
	}

	FUNC5(beio);
}