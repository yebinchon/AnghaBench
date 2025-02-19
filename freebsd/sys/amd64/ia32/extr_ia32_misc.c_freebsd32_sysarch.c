
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uapl32 ;
struct user_segment_descriptor {int dummy; } ;
struct thread {int dummy; } ;
struct sysarch_args {scalar_t__ op; char* parms; } ;
struct i386_ldt_args32 {int num; scalar_t__ descs; int start; } ;
struct i386_ldt_args {int num; struct user_segment_descriptor* descs; int start; } ;
struct freebsd32_sysarch_args {scalar_t__ op; char* parms; } ;


 scalar_t__ I386_GET_LDT ;
 scalar_t__ I386_SET_LDT ;
 int UIO_SYSSPACE ;
 int copyin (char*,struct i386_ldt_args32*,int) ;
 int sysarch (struct thread*,struct sysarch_args*) ;
 int sysarch_ldt (struct thread*,struct sysarch_args*,int ) ;

int
freebsd32_sysarch(struct thread *td, struct freebsd32_sysarch_args *uap)
{
 struct sysarch_args uap1;
 struct i386_ldt_args uapl;
 struct i386_ldt_args32 uapl32;
 int error;

 if (uap->op == I386_SET_LDT || uap->op == I386_GET_LDT) {
  if ((error = copyin(uap->parms, &uapl32, sizeof(uapl32))) != 0)
   return (error);
  uap1.op = uap->op;
  uap1.parms = (char *)&uapl;
  uapl.start = uapl32.start;
  uapl.descs = (struct user_segment_descriptor *)(uintptr_t)
      uapl32.descs;
  uapl.num = uapl32.num;
  return (sysarch_ldt(td, &uap1, UIO_SYSSPACE));
 } else {
  uap1.op = uap->op;
  uap1.parms = uap->parms;
  return (sysarch(td, &uap1));
 }
}
