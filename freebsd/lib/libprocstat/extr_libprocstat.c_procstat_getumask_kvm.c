
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {int ki_pid; int * ki_fd; } ;
struct filedesc {unsigned short fd_cmask; } ;
typedef int kvm_t ;
typedef int fd ;


 int assert (int ) ;
 int kvm_read_all (int *,unsigned long,struct filedesc*,int) ;
 int warnx (char*,int *,int ) ;

__attribute__((used)) static int
procstat_getumask_kvm(kvm_t *kd, struct kinfo_proc *kp, unsigned short *maskp)
{
 struct filedesc fd;

 assert(kd != ((void*)0));
 assert(kp != ((void*)0));
 if (kp->ki_fd == ((void*)0))
  return (-1);
 if (!kvm_read_all(kd, (unsigned long)kp->ki_fd, &fd, sizeof(fd))) {
  warnx("can't read filedesc at %p for pid %d", kp->ki_fd,
      kp->ki_pid);
  return (-1);
 }
 *maskp = fd.fd_cmask;
 return (0);
}
