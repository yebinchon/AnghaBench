
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ctl_private; } ;
union ctl_io {TYPE_2__ io_hdr; } ;
struct ctl_fe_ioctl_params {int ioctl_mtx; int sem; int state; } ;
struct TYPE_3__ {scalar_t__ ptr; } ;


 int CTL_IOCTL_DATAMOVE ;
 size_t CTL_PRIV_FRONTEND ;
 int cv_broadcast (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
cfi_datamove(union ctl_io *io)
{
 struct ctl_fe_ioctl_params *params;

 params = (struct ctl_fe_ioctl_params *)
  io->io_hdr.ctl_private[CTL_PRIV_FRONTEND].ptr;

 mtx_lock(&params->ioctl_mtx);
 params->state = CTL_IOCTL_DATAMOVE;
 cv_broadcast(&params->sem);
 mtx_unlock(&params->ioctl_mtx);
}
