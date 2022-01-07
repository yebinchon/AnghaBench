
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct linux_msgsnd_args {scalar_t__ msgsz; int msgflg; int msqid; int msgp; } ;
typedef int lmtype ;
typedef scalar_t__ l_long ;
struct TYPE_2__ {scalar_t__ msgmax; } ;


 int EINVAL ;
 void* PTRIN (int ) ;
 int copyin (void const*,scalar_t__*,int) ;
 int kern_msgsnd (struct thread*,int ,char const*,scalar_t__,int ,long) ;
 TYPE_1__ msginfo ;

int
linux_msgsnd(struct thread *td, struct linux_msgsnd_args *args)
{
 const void *msgp;
 long mtype;
 l_long lmtype;
 int error;

 if ((l_long)args->msgsz < 0 || args->msgsz > (l_long)msginfo.msgmax)
  return (EINVAL);
 msgp = PTRIN(args->msgp);
 if ((error = copyin(msgp, &lmtype, sizeof(lmtype))) != 0)
  return (error);
 mtype = (long)lmtype;
 return (kern_msgsnd(td, args->msqid,
     (const char *)msgp + sizeof(lmtype),
     args->msgsz, args->msgflg, mtype));
}
