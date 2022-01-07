
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {int ki_structsize; int ki_pid; } ;
typedef int pid_t ;


 int CTL_KERN ;
 int KERN_PROC ;
 int KERN_PROC_PID ;
 int free (struct kinfo_proc*) ;
 struct kinfo_proc* malloc (size_t) ;
 int nitems (int*) ;
 scalar_t__ sysctl (int*,int ,struct kinfo_proc*,size_t*,int *,int ) ;

struct kinfo_proc *
kinfo_getproc(pid_t pid)
{
 struct kinfo_proc *kipp;
 int mib[4];
 size_t len;

 len = 0;
 mib[0] = CTL_KERN;
 mib[1] = KERN_PROC;
 mib[2] = KERN_PROC_PID;
 mib[3] = pid;
 if (sysctl(mib, nitems(mib), ((void*)0), &len, ((void*)0), 0) < 0)
  return (((void*)0));

 kipp = malloc(len);
 if (kipp == ((void*)0))
  return (((void*)0));

 if (sysctl(mib, nitems(mib), kipp, &len, ((void*)0), 0) < 0)
  goto bad;
 if (len != sizeof(*kipp))
  goto bad;
 if (kipp->ki_structsize != sizeof(*kipp))
  goto bad;
 if (kipp->ki_pid != pid)
  goto bad;
 return (kipp);
bad:
 free(kipp);
 return (((void*)0));
}
