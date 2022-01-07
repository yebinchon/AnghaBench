
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct linux_msgrcv_args {scalar_t__ msgsz; int msgflg; int msgtyp; int msqid; int msgp; } ;
typedef int lmtype ;
typedef scalar_t__ l_long ;
struct TYPE_2__ {scalar_t__ msgmax; } ;


 int EINVAL ;
 void* PTRIN (int ) ;
 int copyout (scalar_t__*,void*,int) ;
 int kern_msgrcv (struct thread*,int ,char*,scalar_t__,int ,int ,long*) ;
 TYPE_1__ msginfo ;

int
linux_msgrcv(struct thread *td, struct linux_msgrcv_args *args)
{
 void *msgp;
 long mtype;
 l_long lmtype;
 int error;

 if ((l_long)args->msgsz < 0 || args->msgsz > (l_long)msginfo.msgmax)
  return (EINVAL);
 msgp = PTRIN(args->msgp);
 if ((error = kern_msgrcv(td, args->msqid,
     (char *)msgp + sizeof(lmtype), args->msgsz,
     args->msgtyp, args->msgflg, &mtype)) != 0)
  return (error);
 lmtype = (l_long)mtype;
 return (copyout(&lmtype, msgp, sizeof(lmtype)));
}
