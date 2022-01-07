
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc2 {int dummy; } ;
typedef int pid_t ;


 int CTL_KERN ;
 int KERN_PROC2 ;
 int KERN_PROC_PID ;
 int __arraycount (int*) ;
 int rump_sys___sysctl (int*,int ,struct kinfo_proc2*,size_t*,int *,int ) ;

__attribute__((used)) static int
getproc(pid_t mypid, struct kinfo_proc2 *p)
{
 int name[6];
 size_t len = sizeof(*p);

 name[0] = CTL_KERN;
 name[1] = KERN_PROC2;
 name[2] = KERN_PROC_PID;
 name[3] = mypid;
 name[4] = len;
 name[5] = 1;

 return rump_sys___sysctl(name, __arraycount(name), p, &len, ((void*)0), 0);
}
