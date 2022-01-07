
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ua ;
struct thread {int dummy; } ;
struct arm_get_vfpstate_args {int mc_vfp_size; int mc_vfp; } ;
typedef int mcontext_vfp_t ;
typedef int mcontext_vfp ;


 int EINVAL ;
 int bzero (int *,int) ;
 int copyin (void*,struct arm_get_vfpstate_args*,int) ;
 int copyout (int *,int ,int) ;
 int get_vfpcontext (struct thread*,int *) ;

int
arm_get_vfpstate(struct thread *td, void *args)
{
 int rv;
 struct arm_get_vfpstate_args ua;
 mcontext_vfp_t mcontext_vfp;

 rv = copyin(args, &ua, sizeof(ua));
 if (rv != 0)
  return (rv);
 if (ua.mc_vfp_size != sizeof(mcontext_vfp_t))
  return (EINVAL);



 bzero(&mcontext_vfp, sizeof(mcontext_vfp));


 rv = copyout(&mcontext_vfp, ua.mc_vfp, sizeof(mcontext_vfp));
 if (rv != 0)
  return (rv);
 return (0);
}
