
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {scalar_t__* td_retval; } ;
struct msqid_ds {int dummy; } ;
struct linux_msgctl_args {int cmd; int buf; int msqid; } ;
struct l_msqid64_ds {long msgpool; int msgseg; int msgtql; int msgssz; scalar_t__ msgmni; scalar_t__ msgmnb; int msgmax; scalar_t__ msgmap; } ;
struct l_msginfo {long msgpool; int msgseg; int msgtql; int msgssz; scalar_t__ msgmni; scalar_t__ msgmnb; int msgmax; scalar_t__ msgmap; } ;
typedef int linux_msqid64 ;
typedef int linux_msginfo ;
struct TYPE_2__ {scalar_t__ msgmni; int msgseg; int msgtql; int msgssz; scalar_t__ msgmnb; int msgmax; } ;


 int EACCES ;
 int EINVAL ;
 int EPERM ;
 int LINUX_IPC_64 ;





 int PTRIN (int ) ;
 int bsd_to_linux_msqid_ds (struct msqid_ds*,struct l_msqid64_ds*) ;
 int copyout (struct l_msqid64_ds*,int ,int) ;
 int kern_msgctl (struct thread*,int ,int,struct msqid_ds*) ;
 int linux_msqid_pullup (int,struct l_msqid64_ds*,int ) ;
 int linux_msqid_pushdown (int,struct l_msqid64_ds*,int ) ;
 int linux_to_bsd_msqid_ds (struct l_msqid64_ds*,struct msqid_ds*) ;
 int memset (struct l_msqid64_ds*,int ,int) ;
 TYPE_1__ msginfo ;

int
linux_msgctl(struct thread *td, struct linux_msgctl_args *args)
{
 int error, bsd_cmd;
 struct l_msqid64_ds linux_msqid64;
 struct msqid_ds bsd_msqid;

 memset(&linux_msqid64, 0, sizeof(linux_msqid64));

 bsd_cmd = args->cmd & ~LINUX_IPC_64;
 switch (bsd_cmd) {
 case 132:
 case 128: {
  struct l_msginfo linux_msginfo;

  memset(&linux_msginfo, 0, sizeof(linux_msginfo));




  linux_msginfo.msgpool = (long)msginfo.msgmni *
      (long)msginfo.msgmnb / 1024L;
  linux_msginfo.msgmap = msginfo.msgmnb;
  linux_msginfo.msgmax = msginfo.msgmax;
  linux_msginfo.msgmnb = msginfo.msgmnb;
  linux_msginfo.msgmni = msginfo.msgmni;
  linux_msginfo.msgssz = msginfo.msgssz;
  linux_msginfo.msgtql = msginfo.msgtql;
  linux_msginfo.msgseg = msginfo.msgseg;
  error = copyout(&linux_msginfo, PTRIN(args->buf),
      sizeof(linux_msginfo));
  if (error == 0)
      td->td_retval[0] = msginfo.msgmni;

  return (error);
 }





 case 129:

  break;

 case 130:
  error = linux_msqid_pullup(args->cmd & LINUX_IPC_64,
      &linux_msqid64, PTRIN(args->buf));
  if (error != 0)
   return (error);
  linux_to_bsd_msqid_ds(&linux_msqid64, &bsd_msqid);
  break;

 case 131:

  break;

 default:
  return (EINVAL);
  break;
 }

 error = kern_msgctl(td, args->msqid, bsd_cmd, &bsd_msqid);
 if (error != 0) {
  if (bsd_cmd == 131 && error == EACCES)
   return (EPERM);
  if (bsd_cmd != 131 || error != EINVAL)
   return (error);
 }

 if (bsd_cmd == 129) {
  bsd_to_linux_msqid_ds(&bsd_msqid, &linux_msqid64);
  return (linux_msqid_pushdown(args->cmd & LINUX_IPC_64,
      &linux_msqid64, PTRIN(args->buf)));
 }

 return (0);
}
