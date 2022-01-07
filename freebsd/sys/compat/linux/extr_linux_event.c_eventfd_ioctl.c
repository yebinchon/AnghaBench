
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct file {scalar_t__ f_type; int f_flag; int * f_data; } ;


 scalar_t__ DTYPE_LINUXEFD ;
 scalar_t__ DTYPE_LINUXTFD ;
 int EINVAL ;
 int ENXIO ;


 int FNONBLOCK ;
 int atomic_clear_int (int *,int ) ;
 int atomic_set_int (int *,int ) ;

__attribute__((used)) static int
eventfd_ioctl(struct file *fp, u_long cmd, void *data,
    struct ucred *active_cred, struct thread *td)
{

 if (fp->f_data == ((void*)0) || (fp->f_type != DTYPE_LINUXEFD &&
     fp->f_type != DTYPE_LINUXTFD))
  return (EINVAL);

 switch (cmd)
 {
 case 128:
  if ((*(int *)data))
   atomic_set_int(&fp->f_flag, FNONBLOCK);
  else
   atomic_clear_int(&fp->f_flag, FNONBLOCK);
 case 129:
  return (0);
 default:
  return (ENXIO);
 }
}
