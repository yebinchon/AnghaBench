
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct thread {int dummy; } ;
struct proc {int dummy; } ;
typedef int id_t ;


 int EINVAL ;
 int PGET_CANSEE ;
 int PGET_NOTID ;
 int PGET_NOTWEXIT ;
 int PRIV_IO ;

 int PROC_KPTI_CTL_DISABLE_ON_EXEC ;
 int PROC_KPTI_CTL_ENABLE_ON_EXEC ;

 int PROC_UNLOCK (struct proc*) ;
 int P_PID ;
 int copyin (void*,int*,int) ;
 int copyout (int*,void*,int) ;
 int cpu_procctl_kpti (struct proc*,int,int*) ;
 int pget (int ,int,struct proc**) ;
 int priv_check (struct thread*,int ) ;

int
cpu_procctl(struct thread *td, int idtype, id_t id, int com, void *data)
{
 struct proc *p;
 int error, val;

 switch (com) {
 case 129:
 case 128:
  if (idtype != P_PID) {
   error = EINVAL;
   break;
  }
  if (com == 129) {

   error = priv_check(td, PRIV_IO);
   if (error != 0)
    break;
   error = copyin(data, &val, sizeof(val));
   if (error != 0)
    break;
   if (val != PROC_KPTI_CTL_ENABLE_ON_EXEC &&
       val != PROC_KPTI_CTL_DISABLE_ON_EXEC) {
    error = EINVAL;
    break;
   }
  }
  error = pget(id, PGET_CANSEE | PGET_NOTWEXIT | PGET_NOTID, &p);
  if (error == 0) {
   cpu_procctl_kpti(p, com, &val);
   PROC_UNLOCK(p);
   if (com == 128)
    error = copyout(&val, data, sizeof(val));
  }
  break;
 default:
  error = EINVAL;
  break;
 }
 return (error);
}
