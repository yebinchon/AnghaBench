
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ctl_io {int dummy; } ctl_io ;


 int free (union ctl_io*) ;

void
ctl_scsi_free_io(union ctl_io *io)
{
 free(io);
}
