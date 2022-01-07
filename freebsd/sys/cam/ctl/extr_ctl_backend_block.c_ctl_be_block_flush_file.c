
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


union ctl_io {int scsiio; } ;
struct mount {int dummy; } ;
struct ctl_be_block_lun {int io_lock; TYPE_2__* vn; } ;
struct ctl_be_block_io {int ds_t0; int ds_trans_type; int ds_tag_type; int io_len; TYPE_1__* lun; scalar_t__ io_arg; union ctl_io* io; } ;
struct TYPE_7__ {struct mount* v_mount; } ;
struct TYPE_6__ {int disk_stats; } ;


 int DPRINTF (char*) ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int LK_SHARED ;
 int MNT_NOWAIT ;
 scalar_t__ MNT_SHARED_WRITES (struct mount*) ;
 int MNT_WAIT ;
 int VOP_FSYNC (TYPE_2__*,int ,int ) ;
 int VOP_UNLOCK (TYPE_2__*,int ) ;
 int V_WAIT ;
 int binuptime (int *) ;
 int ctl_complete_beio (struct ctl_be_block_io*) ;
 int ctl_set_internal_failure (int *,int,int) ;
 int ctl_set_success (int *) ;
 int curthread ;
 int devstat_end_transaction (int ,int ,int ,int ,int *,int *) ;
 int devstat_start_transaction (int ,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vn_finished_write (struct mount*) ;
 int vn_lock (TYPE_2__*,int) ;
 int vn_start_write (TYPE_2__*,struct mount**,int ) ;

__attribute__((used)) static void
ctl_be_block_flush_file(struct ctl_be_block_lun *be_lun,
   struct ctl_be_block_io *beio)
{
 union ctl_io *io = beio->io;
 struct mount *mountpoint;
 int error, lock_flags;

 DPRINTF("entered\n");

 binuptime(&beio->ds_t0);
 mtx_lock(&be_lun->io_lock);
 devstat_start_transaction(beio->lun->disk_stats, &beio->ds_t0);
 mtx_unlock(&be_lun->io_lock);

 (void) vn_start_write(be_lun->vn, &mountpoint, V_WAIT);

 if (MNT_SHARED_WRITES(mountpoint) ||
     ((mountpoint == ((void*)0)) && MNT_SHARED_WRITES(be_lun->vn->v_mount)))
  lock_flags = LK_SHARED;
 else
  lock_flags = LK_EXCLUSIVE;
 vn_lock(be_lun->vn, lock_flags | LK_RETRY);
 error = VOP_FSYNC(be_lun->vn, beio->io_arg ? MNT_NOWAIT : MNT_WAIT,
     curthread);
 VOP_UNLOCK(be_lun->vn, 0);

 vn_finished_write(mountpoint);

 mtx_lock(&be_lun->io_lock);
 devstat_end_transaction(beio->lun->disk_stats, beio->io_len,
     beio->ds_tag_type, beio->ds_trans_type,
             ((void*)0), &beio->ds_t0);
 mtx_unlock(&be_lun->io_lock);

 if (error == 0)
  ctl_set_success(&io->scsiio);
 else {

  ctl_set_internal_failure(&io->scsiio,
                    1,
                      0xbad1);
 }

 ctl_complete_beio(beio);
}
