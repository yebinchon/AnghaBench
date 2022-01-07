
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int be_move_done; int * kern_data_ptr; } ;
union ctl_io {TYPE_1__ scsiio; } ;
typedef int uint8_t ;
struct TYPE_4__ {void (* fe_datamove ) (union ctl_io*) ;} ;


 scalar_t__ CTL_LSGL (union ctl_io*) ;
 TYPE_2__* CTL_PORT (union ctl_io*) ;
 int ctl_datamove_remote_dm_write_cb ;
 int ctl_datamove_remote_sgl_setup (union ctl_io*) ;

__attribute__((used)) static void
ctl_datamove_remote_write(union ctl_io *io)
{
 int retval;
 void (*fe_datamove)(union ctl_io *io);







 retval = ctl_datamove_remote_sgl_setup(io);
 if (retval != 0)
  return;


 io->scsiio.kern_data_ptr = (uint8_t *)CTL_LSGL(io);





 io->scsiio.be_move_done = ctl_datamove_remote_dm_write_cb;

 fe_datamove = CTL_PORT(io)->fe_datamove;
 fe_datamove(io);
}
