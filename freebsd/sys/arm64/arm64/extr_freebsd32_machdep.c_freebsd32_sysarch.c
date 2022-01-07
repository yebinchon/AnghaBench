
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct thread {int dummy; } ;
struct freebsd32_sysarch_args {int op; int parms; } ;
typedef int mcontext_vfp ;
typedef int mcontext32_vfp_t ;
typedef int args ;





 int EINVAL ;
 int WRITE_SPECIALREG (int ,int ) ;
 int bzero (int *,int) ;
 int copyin (int ,...) ;
 int copyout (int *,void*,int) ;
 int cpu_icache_sync_range_checked (int,int) ;
 int get_fpcontext32 (struct thread*,int *) ;
 int tpidr_el0 ;
 int tpidrro_el0 ;

int
freebsd32_sysarch(struct thread *td, struct freebsd32_sysarch_args *uap)
{
 int error;







 switch(uap->op) {
 case 2:
  WRITE_SPECIALREG(tpidr_el0, uap->parms);
  WRITE_SPECIALREG(tpidrro_el0, uap->parms);
  return 0;
 case 0:
  {
   struct {
    uint32_t addr;
    uint32_t size;
   } args;

   if ((error = copyin(uap->parms, &args, sizeof(args))) != 0)
    return (error);
   if ((uint64_t)args.addr + (uint64_t)args.size > 0xffffffff)
    return (EINVAL);
   cpu_icache_sync_range_checked(args.addr, args.size);
   return 0;
  }
 case 4:
  {
   mcontext32_vfp_t mcontext_vfp;

   struct {
    uint32_t mc_vfp_size;
    uint32_t mc_vfp;
   } args;
   if ((error = copyin(uap->parms, &args, sizeof(args))) != 0)
    return (error);
   if (args.mc_vfp_size != sizeof(mcontext_vfp))
    return (EINVAL);



   bzero(&mcontext_vfp, sizeof(mcontext_vfp));

   error = copyout(&mcontext_vfp,
    (void *)(uintptr_t)args.mc_vfp,
    sizeof(mcontext_vfp));
   return error;
  }
 }

 return (EINVAL);
}
