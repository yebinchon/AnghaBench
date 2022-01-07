
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* cdb; } ;
union ctl_io {TYPE_1__ scsiio; } ;
struct scsi_start_stop_unit {int how; } ;
struct ctl_be_lun {int dummy; } ;


 struct ctl_be_lun* CTL_BACKEND_LUN (union ctl_io*) ;
 int CTL_RETVAL_COMPLETE ;

 int SSS_LOEJ ;
 int SSS_PC_MASK ;
 int SSS_START ;






 int ctl_backend_ramdisk_unmap (union ctl_io*) ;
 int ctl_backend_ramdisk_ws (union ctl_io*) ;
 int ctl_config_write_done (union ctl_io*) ;
 int ctl_lun_ejected (struct ctl_be_lun*) ;
 int ctl_lun_has_media (struct ctl_be_lun*) ;
 int ctl_set_invalid_opcode (TYPE_1__*) ;
 int ctl_set_success (TYPE_1__*) ;
 int ctl_start_lun (struct ctl_be_lun*) ;
 int ctl_stop_lun (struct ctl_be_lun*) ;

__attribute__((used)) static int
ctl_backend_ramdisk_config_write(union ctl_io *io)
{
 struct ctl_be_lun *cbe_lun = CTL_BACKEND_LUN(io);
 int retval = 0;

 switch (io->scsiio.cdb[0]) {
 case 132:
 case 131:

  ctl_set_success(&io->scsiio);
  ctl_config_write_done(io);
  break;
 case 133: {
  struct scsi_start_stop_unit *cdb;

  cdb = (struct scsi_start_stop_unit *)io->scsiio.cdb;
  if ((cdb->how & SSS_PC_MASK) != 0) {
   ctl_set_success(&io->scsiio);
   ctl_config_write_done(io);
   break;
  }
  if (cdb->how & SSS_START) {
   if (cdb->how & SSS_LOEJ)
    ctl_lun_has_media(cbe_lun);
   ctl_start_lun(cbe_lun);
  } else {
   ctl_stop_lun(cbe_lun);
   if (cdb->how & SSS_LOEJ)
    ctl_lun_ejected(cbe_lun);
  }
  ctl_set_success(&io->scsiio);
  ctl_config_write_done(io);
  break;
 }
 case 134:
  ctl_set_success(&io->scsiio);
  ctl_config_write_done(io);
  break;
 case 129:
 case 128:
  ctl_backend_ramdisk_ws(io);
  break;
 case 130:
  ctl_backend_ramdisk_unmap(io);
  break;
 default:
  ctl_set_invalid_opcode(&io->scsiio);
  ctl_config_write_done(io);
  retval = CTL_RETVAL_COMPLETE;
  break;
 }

 return (retval);
}
