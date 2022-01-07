
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_segment_descriptor {int num; int * descs; } ;
struct thread {int td_pcb; } ;
struct sysarch_args {int op; int * parms; } ;
struct i386_ldt_args {int num; int * descs; } ;


 int AUDIT_ARG_CMD (int) ;
 int EINVAL ;


 int M_TEMP ;
 int M_WAITOK ;
 int PCB_FULL_IRET ;
 int UIO_USERSPACE ;
 int amd64_get_ldt (struct thread*,struct user_segment_descriptor*) ;
 int amd64_set_ldt (struct thread*,struct user_segment_descriptor*,struct user_segment_descriptor*) ;
 int copyin (int *,struct user_segment_descriptor*,int) ;
 int free (struct user_segment_descriptor*,int ) ;
 struct user_segment_descriptor* malloc (int,int ,int ) ;
 int max_ldt_segment ;
 int set_pcb_flags (int ,int ) ;

int
sysarch_ldt(struct thread *td, struct sysarch_args *uap, int uap_space)
{
 struct i386_ldt_args *largs, la;
 struct user_segment_descriptor *lp;
 int error = 0;





 AUDIT_ARG_CMD(uap->op);
 if (uap_space == UIO_USERSPACE) {
  error = copyin(uap->parms, &la, sizeof(struct i386_ldt_args));
  if (error != 0)
   return (error);
  largs = &la;
 } else
  largs = (struct i386_ldt_args *)uap->parms;

 switch (uap->op) {
 case 129:
  error = amd64_get_ldt(td, largs);
  break;
 case 128:
  if (largs->descs != ((void*)0) && largs->num > max_ldt_segment)
   return (EINVAL);
  set_pcb_flags(td->td_pcb, PCB_FULL_IRET);
  if (largs->descs != ((void*)0)) {
   lp = malloc(largs->num * sizeof(struct
       user_segment_descriptor), M_TEMP, M_WAITOK);
   error = copyin(largs->descs, lp, largs->num *
       sizeof(struct user_segment_descriptor));
   if (error == 0)
    error = amd64_set_ldt(td, largs, lp);
   free(lp, M_TEMP);
  } else {
   error = amd64_set_ldt(td, largs, ((void*)0));
  }
  break;
 }
 return (error);
}
