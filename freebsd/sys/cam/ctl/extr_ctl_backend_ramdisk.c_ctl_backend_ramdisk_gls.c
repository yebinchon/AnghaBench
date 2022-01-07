
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ kern_data_ptr; } ;
union ctl_io {TYPE_1__ scsiio; } ;
typedef int uint8_t ;
typedef int u_int ;
struct scsi_get_lba_status_data {TYPE_2__* descr; } ;
struct ctl_be_ramdisk_lun {scalar_t__ pblockmul; } ;
struct ctl_be_lun {int pblockexp; struct ctl_be_ramdisk_lun* be_lun; } ;
struct TYPE_6__ {int lba; } ;
struct TYPE_5__ {int status; int length; int addr; } ;


 TYPE_3__* ARGS (union ctl_io*) ;
 struct ctl_be_lun* CTL_BACKEND_LUN (union ctl_io*) ;
 int CTL_RETVAL_COMPLETE ;
 int GP_OTHER ;
 int * P_ANCHORED ;
 int * P_UNMAPPED ;
 int UINT_MAX ;
 int * ctl_backend_ramdisk_getpage (struct ctl_be_ramdisk_lun*,int,int ) ;
 int ctl_config_read_done (union ctl_io*) ;
 int scsi_u64to8b (int,int ) ;
 int scsi_ulto4b (scalar_t__,int ) ;

__attribute__((used)) static int
ctl_backend_ramdisk_gls(union ctl_io *io)
{
 struct ctl_be_lun *cbe_lun = CTL_BACKEND_LUN(io);
 struct ctl_be_ramdisk_lun *be_lun = cbe_lun->be_lun;
 struct scsi_get_lba_status_data *data;
 uint8_t *page;
 u_int lbaoff;

 data = (struct scsi_get_lba_status_data *)io->scsiio.kern_data_ptr;
 scsi_u64to8b(ARGS(io)->lba, data->descr[0].addr);
 lbaoff = ARGS(io)->lba & ~(UINT_MAX << cbe_lun->pblockexp);
 scsi_ulto4b(be_lun->pblockmul - lbaoff, data->descr[0].length);
 page = ctl_backend_ramdisk_getpage(be_lun,
     ARGS(io)->lba >> cbe_lun->pblockexp, GP_OTHER);
 if (page == P_UNMAPPED)
  data->descr[0].status = 1;
 else if (page == P_ANCHORED)
  data->descr[0].status = 2;
 else
  data->descr[0].status = 0;
 ctl_config_read_done(io);
 return (CTL_RETVAL_COMPLETE);
}
