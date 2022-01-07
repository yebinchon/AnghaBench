
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pid; } ;
struct proc_handle {int flags; int status; int model; int execpath; int * procstat; TYPE_1__ public; } ;
struct kinfo_proc {int dummy; } ;
typedef int pid_t ;


 int EINVAL ;



 int ENOMEM ;
 int KERN_PROC_PID ;
 int O_RDONLY ;
 int PR_MODEL_ILP32 ;
 int PR_MODEL_LP64 ;
 int close (int) ;
 int errno ;
 int getelfclass (int) ;
 struct proc_handle* malloc (int) ;
 int memset (struct proc_handle*,int ,int) ;
 int open (int ,int ) ;
 int procstat_freeprocs (int *,struct kinfo_proc*) ;
 int procstat_getpathname (int *,struct kinfo_proc*,int ,int) ;
 struct kinfo_proc* procstat_getprocs (int *,int ,int ,int*) ;
 int * procstat_open_sysctl () ;

__attribute__((used)) static int
proc_init(pid_t pid, int flags, int status, struct proc_handle **pphdl)
{
 struct kinfo_proc *kp;
 struct proc_handle *phdl;
 int error, class, count, fd;

 error = ENOMEM;
 if ((phdl = malloc(sizeof(*phdl))) == ((void*)0))
  goto out;

 memset(phdl, 0, sizeof(*phdl));
 phdl->public.pid = pid;
 phdl->flags = flags;
 phdl->status = status;
 phdl->procstat = procstat_open_sysctl();
 if (phdl->procstat == ((void*)0))
  goto out;


 if ((kp = procstat_getprocs(phdl->procstat, KERN_PROC_PID, pid,
     &count)) == ((void*)0))
  goto out;
 error = procstat_getpathname(phdl->procstat, kp, phdl->execpath,
     sizeof(phdl->execpath));
 procstat_freeprocs(phdl->procstat, kp);
 if (error != 0)
  goto out;


 if ((fd = open(phdl->execpath, O_RDONLY)) < 0) {
  error = errno;
  goto out;
 }
 class = getelfclass(fd);
 switch (class) {
 case 129:
  phdl->model = PR_MODEL_LP64;
  break;
 case 130:
  phdl->model = PR_MODEL_ILP32;
  break;
 case 128:
 default:
  error = EINVAL;
  break;
 }
 (void)close(fd);

out:
 *pphdl = phdl;
 return (error);
}
