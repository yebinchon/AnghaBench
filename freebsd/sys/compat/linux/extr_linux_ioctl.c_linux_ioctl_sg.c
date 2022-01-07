
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_ioctl_args {int cmd; } ;
struct ioctl_args {int dummy; } ;


 int ENODEV ;







 int SG_GET_RESERVED_SIZE ;
 int SG_GET_SCSI_ID ;
 int SG_GET_SG_TABLESIZE ;
 int SG_GET_TIMEOUT ;
 int SG_GET_VERSION_NUM ;
 int SG_IO ;
 int SG_SET_TIMEOUT ;
 int linux_ioctl_sg_io (struct thread*,struct linux_ioctl_args*) ;
 int sys_ioctl (struct thread*,struct ioctl_args*) ;

__attribute__((used)) static int
linux_ioctl_sg(struct thread *td, struct linux_ioctl_args *args)
{

 switch (args->cmd) {
 case 130:
  args->cmd = SG_GET_VERSION_NUM;
  break;
 case 128:
  args->cmd = SG_SET_TIMEOUT;
  break;
 case 131:
  args->cmd = SG_GET_TIMEOUT;
  break;
 case 129:
  args->cmd = SG_IO;



  break;
 case 134:
  args->cmd = SG_GET_RESERVED_SIZE;
  break;
 case 133:
  args->cmd = SG_GET_SCSI_ID;
  break;
 case 132:
  args->cmd = SG_GET_SG_TABLESIZE;
  break;
 default:
  return (ENODEV);
 }
 return (sys_ioctl(td, (struct ioctl_args *)args));
}
