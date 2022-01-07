
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ctl_io {int dummy; } ctl_io ;


 int CTL_HA_DT_CMD_WRITE ;
 int ctl_datamove_remote_write_cb ;
 int ctl_datamove_remote_xfer (union ctl_io*,int ,int ) ;

__attribute__((used)) static int
ctl_datamove_remote_dm_write_cb(union ctl_io *io)
{
 int retval;

 retval = ctl_datamove_remote_xfer(io, CTL_HA_DT_CMD_WRITE,
       ctl_datamove_remote_write_cb);
 return (retval);
}
