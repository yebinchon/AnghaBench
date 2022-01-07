
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ctl_private; int flags; int status; } ;
struct ctl_scsiio {TYPE_1__ io_hdr; } ;
union ctl_io {struct ctl_scsiio scsiio; } ;
struct ctl_lun {TYPE_2__* backend; } ;
struct ctl_lba_len_flags {int flags; } ;
struct TYPE_4__ {int (* data_submit ) (union ctl_io*) ;} ;


 int CTL_DEBUG_PRINT (char*) ;
 int CTL_FLAG_IO_CONT ;
 int CTL_LLF_COMPARE ;
 int CTL_LLF_WRITE ;
 struct ctl_lun* CTL_LUN (union ctl_io*) ;
 size_t CTL_PRIV_LBA_LEN ;
 int CTL_STATUS_NONE ;
 int stub1 (union ctl_io*) ;

__attribute__((used)) static int
ctl_cnw_cont(union ctl_io *io)
{
 struct ctl_lun *lun = CTL_LUN(io);
 struct ctl_scsiio *ctsio;
 struct ctl_lba_len_flags *lbalen;
 int retval;

 ctsio = &io->scsiio;
 ctsio->io_hdr.status = CTL_STATUS_NONE;
 ctsio->io_hdr.flags &= ~CTL_FLAG_IO_CONT;
 lbalen = (struct ctl_lba_len_flags *)
     &ctsio->io_hdr.ctl_private[CTL_PRIV_LBA_LEN];
 lbalen->flags &= ~CTL_LLF_COMPARE;
 lbalen->flags |= CTL_LLF_WRITE;

 CTL_DEBUG_PRINT(("ctl_cnw_cont: calling data_submit()\n"));
 retval = lun->backend->data_submit((union ctl_io *)ctsio);
 return (retval);
}
