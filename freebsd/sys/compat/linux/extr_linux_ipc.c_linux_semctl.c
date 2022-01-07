
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union semun {void* array; struct semid_ds* buf; int val; } ;
struct thread {int * td_retval; } ;
struct semid_ds {int dummy; } ;
struct TYPE_4__ {int array; int buf; int val; } ;
struct linux_semctl_args {int cmd; int semnum; int semid; TYPE_1__ arg; } ;
struct l_seminfo {int semmns; int semmap; int semmni; } ;
struct l_semid64_ds {int semmns; int semmap; int semmni; } ;
typedef int register_t ;
typedef int linux_seminfo ;
typedef int linux_semid64 ;
struct TYPE_5__ {int semmni; } ;


 int EINVAL ;
 int GETALL ;
 int GETNCNT ;
 int GETPID ;
 int GETVAL ;
 int GETZCNT ;
 int IPC_RMID ;
 int IPC_SET ;
 int IPC_STAT ;





 int LINUX_IPC_64 ;
 void* PTRIN (int ) ;
 int SEM_STAT ;
 int SETALL ;
 int SETVAL ;
 int bcopy (TYPE_2__*,int *,int) ;
 int bsd_to_linux_semid_ds (struct semid_ds*,struct l_seminfo*) ;
 int copyout (struct l_seminfo*,void*,int) ;
 int kern_semctl (struct thread*,int ,int ,int,union semun*,int *) ;
 int linux_msg (struct thread*,char*,int) ;
 int linux_semid_pullup (int,struct l_seminfo*,void*) ;
 int linux_semid_pushdown (int,struct l_seminfo*,void*) ;
 int linux_to_bsd_semid_ds (struct l_seminfo*,struct semid_ds*) ;
 int memset (struct l_seminfo*,int ,int) ;
 TYPE_2__ seminfo ;

int
linux_semctl(struct thread *td, struct linux_semctl_args *args)
{
 struct l_semid64_ds linux_semid64;
 struct l_seminfo linux_seminfo;
 struct semid_ds semid;
 union semun semun;
 register_t rval;
 int cmd, error;

 memset(&linux_seminfo, 0, sizeof(linux_seminfo));
 memset(&linux_semid64, 0, sizeof(linux_semid64));

 switch (args->cmd & ~LINUX_IPC_64) {
 case 134:
  cmd = IPC_RMID;
  break;
 case 139:
  cmd = GETNCNT;
  break;
 case 138:
  cmd = GETPID;
  break;
 case 137:
  cmd = GETVAL;
  break;
 case 136:
  cmd = GETZCNT;
  break;
 case 128:
  cmd = SETVAL;
  semun.val = args->arg.val;
  break;
 case 133:
  cmd = IPC_SET;
  error = linux_semid_pullup(args->cmd & LINUX_IPC_64,
      &linux_semid64, PTRIN(args->arg.buf));
  if (error != 0)
   return (error);
  linux_to_bsd_semid_ds(&linux_semid64, &semid);
  semun.buf = &semid;
  return (kern_semctl(td, args->semid, args->semnum, cmd, &semun,
      td->td_retval));
 case 132:
  cmd = IPC_STAT;
  semun.buf = &semid;
  error = kern_semctl(td, args->semid, args->semnum, cmd, &semun,
      &rval);
  if (error != 0)
   return (error);
  bsd_to_linux_semid_ds(&semid, &linux_semid64);
  return (linux_semid_pushdown(args->cmd & LINUX_IPC_64,
      &linux_semid64, PTRIN(args->arg.buf)));
 case 130:
  cmd = SEM_STAT;
  semun.buf = &semid;
  error = kern_semctl(td, args->semid, args->semnum, cmd, &semun,
      &rval);
  if (error != 0)
   return (error);
  bsd_to_linux_semid_ds(&semid, &linux_semid64);
  error = linux_semid_pushdown(args->cmd & LINUX_IPC_64,
      &linux_semid64, PTRIN(args->arg.buf));
  if (error == 0)
   td->td_retval[0] = rval;
  return (error);
 case 135:
 case 131:
  bcopy(&seminfo, &linux_seminfo.semmni, sizeof(linux_seminfo) -
      sizeof(linux_seminfo.semmap) );






  linux_seminfo.semmap = linux_seminfo.semmns;






  error = copyout(&linux_seminfo,
      PTRIN(args->arg.buf), sizeof(linux_seminfo));
  if (error != 0)
   return (error);



  td->td_retval[0] = seminfo.semmni;
  return (0);
 case 140:
  cmd = GETALL;
  semun.array = PTRIN(args->arg.array);
  break;
 case 129:
  cmd = SETALL;
  semun.array = PTRIN(args->arg.array);
  break;
 default:
  linux_msg(td, "ipc type %d is not implemented",
    args->cmd & ~LINUX_IPC_64);
  return (EINVAL);
 }
 return (kern_semctl(td, args->semid, args->semnum, cmd, &semun,
     td->td_retval));
}
