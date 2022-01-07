
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usrstack ;
typedef scalar_t__ u_long ;
struct rlimit {scalar_t__ rlim_cur; } ;
typedef int mib ;


 int CTL_KERN ;
 int KERN_USRSTACK ;
 int RLIMIT_STACK ;
 int _rtld_get_stack_prot () ;
 int getrlimit (int ,struct rlimit*) ;
 int mprotect (void*,scalar_t__,int ) ;
 int sysctl (int*,int,scalar_t__*,size_t*,int *,int ) ;

void
__libc_map_stacks_exec(void)
{
 int mib[2];
 struct rlimit rlim;
 u_long usrstack;
 size_t len;

 mib[0] = CTL_KERN;
 mib[1] = KERN_USRSTACK;
 len = sizeof(usrstack);
 if (sysctl(mib, sizeof(mib) / sizeof(mib[0]), &usrstack, &len, ((void*)0), 0)
     == -1)
  return;
 if (getrlimit(RLIMIT_STACK, &rlim) == -1)
  return;
 mprotect((void *)(uintptr_t)(usrstack - rlim.rlim_cur),
     rlim.rlim_cur, _rtld_get_stack_prot());
}
