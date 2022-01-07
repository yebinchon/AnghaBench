
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int * ctl_private; int status; } ;
struct ctl_scsiio {TYPE_1__ io_hdr; } ;
union ctl_io {struct ctl_scsiio scsiio; } ;
struct ctl_lun {TYPE_3__* backend; TYPE_2__* be_lun; } ;
struct ctl_lba_len_flags {scalar_t__ lba; scalar_t__ len; } ;
struct TYPE_6__ {int (* config_write ) (union ctl_io*) ;} ;
struct TYPE_5__ {scalar_t__ maxlba; } ;


 int CTL_DEBUG_PRINT (char*) ;
 int CTL_FLAG_IO_CONT ;
 struct ctl_lun* CTL_LUN (union ctl_io*) ;
 size_t CTL_PRIV_LBA_LEN ;
 int CTL_STATUS_NONE ;
 scalar_t__ UINT32_MAX ;
 int stub1 (union ctl_io*) ;

__attribute__((used)) static int
ctl_write_same_cont(union ctl_io *io)
{
 struct ctl_lun *lun = CTL_LUN(io);
 struct ctl_scsiio *ctsio;
 struct ctl_lba_len_flags *lbalen;
 int retval;

 ctsio = &io->scsiio;
 ctsio->io_hdr.status = CTL_STATUS_NONE;
 lbalen = (struct ctl_lba_len_flags *)
     &ctsio->io_hdr.ctl_private[CTL_PRIV_LBA_LEN];
 lbalen->lba += lbalen->len;
 if ((lun->be_lun->maxlba + 1) - lbalen->lba <= UINT32_MAX) {
  ctsio->io_hdr.flags &= ~CTL_FLAG_IO_CONT;
  lbalen->len = (lun->be_lun->maxlba + 1) - lbalen->lba;
 }

 CTL_DEBUG_PRINT(("ctl_write_same_cont: calling config_write()\n"));
 retval = lun->backend->config_write((union ctl_io *)ctsio);
 return (retval);
}
