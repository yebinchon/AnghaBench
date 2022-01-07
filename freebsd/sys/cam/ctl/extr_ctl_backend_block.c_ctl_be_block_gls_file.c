
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ kern_data_ptr; } ;
union ctl_io {TYPE_1__ scsiio; } ;
struct scsi_get_lba_status_data {TYPE_3__* descr; } ;
struct ctl_lba_len_flags {scalar_t__ lba; } ;
struct TYPE_7__ {int blocksize; } ;
struct ctl_be_block_lun {int size_bytes; TYPE_2__ cbe_lun; int vn; } ;
struct ctl_be_block_io {union ctl_io* io; } ;
typedef int off_t ;
struct TYPE_9__ {int td_ucred; } ;
struct TYPE_8__ {int status; int length; int addr; } ;


 struct ctl_lba_len_flags* ARGS (union ctl_io*) ;
 int DPRINTF (char*) ;
 int FIOSEEKDATA ;
 int FIOSEEKHOLE ;
 int LK_RETRY ;
 int LK_SHARED ;
 int MIN (int ,scalar_t__) ;
 int UINT32_MAX ;
 int VOP_IOCTL (int ,int ,int*,int ,int ,TYPE_4__*) ;
 int VOP_UNLOCK (int ,int ) ;
 int ctl_complete_beio (struct ctl_be_block_io*) ;
 TYPE_4__* curthread ;
 int scsi_u64to8b (scalar_t__,int ) ;
 int scsi_ulto4b (int ,int ) ;
 int vn_lock (int ,int) ;

__attribute__((used)) static void
ctl_be_block_gls_file(struct ctl_be_block_lun *be_lun,
   struct ctl_be_block_io *beio)
{
 union ctl_io *io = beio->io;
 struct ctl_lba_len_flags *lbalen = ARGS(io);
 struct scsi_get_lba_status_data *data;
 off_t roff, off;
 int error, status;

 DPRINTF("entered\n");

 off = roff = ((off_t)lbalen->lba) * be_lun->cbe_lun.blocksize;
 vn_lock(be_lun->vn, LK_SHARED | LK_RETRY);
 error = VOP_IOCTL(be_lun->vn, FIOSEEKHOLE, &off,
     0, curthread->td_ucred, curthread);
 if (error == 0 && off > roff)
  status = 0;
 else {
  error = VOP_IOCTL(be_lun->vn, FIOSEEKDATA, &off,
      0, curthread->td_ucred, curthread);
  if (error == 0 && off > roff)
   status = 1;
  else {
   status = 0;
   off = be_lun->size_bytes;
  }
 }
 VOP_UNLOCK(be_lun->vn, 0);

 data = (struct scsi_get_lba_status_data *)io->scsiio.kern_data_ptr;
 scsi_u64to8b(lbalen->lba, data->descr[0].addr);
 scsi_ulto4b(MIN(UINT32_MAX, off / be_lun->cbe_lun.blocksize -
     lbalen->lba), data->descr[0].length);
 data->descr[0].status = status;

 ctl_complete_beio(beio);
}
