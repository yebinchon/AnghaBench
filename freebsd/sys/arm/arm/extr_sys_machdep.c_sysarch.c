
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sysarch_args {int op; int parms; } ;







 int CAPFAIL_SYSCALL ;
 int ECAPMODE ;
 int EINVAL ;
 scalar_t__ IN_CAPABILITY_MODE (struct thread*) ;
 int KTRPOINT (struct thread*,int ) ;
 int KTR_CAPFAIL ;
 int arm32_drain_writebuf (struct thread*,int ) ;
 int arm32_get_tp (struct thread*,int ) ;
 int arm32_set_tp (struct thread*,int ) ;
 int arm32_sync_icache (struct thread*,int ) ;
 int arm_get_vfpstate (struct thread*,int ) ;
 int ktrcapfail (int ,int *,int *) ;

int
sysarch(struct thread *td, struct sysarch_args *uap)
{
 int error;
 switch (uap->op) {
 case 128:
  error = arm32_sync_icache(td, uap->parms);
  break;
 case 132:
  error = arm32_drain_writebuf(td, uap->parms);
  break;
 case 129:
  error = arm32_set_tp(td, uap->parms);
  break;
 case 131:
  error = arm32_get_tp(td, uap->parms);
  break;
 case 130:
  error = arm_get_vfpstate(td, uap->parms);
  break;
 default:
  error = EINVAL;
  break;
 }
 return (error);
}
