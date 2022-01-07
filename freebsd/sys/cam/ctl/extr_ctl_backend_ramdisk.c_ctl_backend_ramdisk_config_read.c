
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* cdb; } ;
union ctl_io {TYPE_1__ scsiio; } ;


 int CTL_RETVAL_COMPLETE ;

 int SGLS_SERVICE_ACTION ;
 int ctl_backend_ramdisk_gls (union ctl_io*) ;
 int ctl_config_read_done (union ctl_io*) ;
 int ctl_set_invalid_field (TYPE_1__*,int,int,int,int,int) ;
 int ctl_set_invalid_opcode (TYPE_1__*) ;

__attribute__((used)) static int
ctl_backend_ramdisk_config_read(union ctl_io *io)
{
 int retval = 0;

 switch (io->scsiio.cdb[0]) {
 case 128:
  if (io->scsiio.cdb[1] == SGLS_SERVICE_ACTION) {
   retval = ctl_backend_ramdisk_gls(io);
   break;
  }
  ctl_set_invalid_field(&io->scsiio,
                        1,
                      1,
                    1,
                        1,
                  4);
  ctl_config_read_done(io);
  retval = CTL_RETVAL_COMPLETE;
  break;
 default:
  ctl_set_invalid_opcode(&io->scsiio);
  ctl_config_read_done(io);
  retval = CTL_RETVAL_COMPLETE;
  break;
 }
 return (retval);
}
