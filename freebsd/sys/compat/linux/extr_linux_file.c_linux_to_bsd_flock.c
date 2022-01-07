
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l_flock {int l_type; scalar_t__ l_pid; scalar_t__ l_len; scalar_t__ l_start; int l_whence; } ;
struct flock {int l_type; scalar_t__ l_sysid; scalar_t__ l_pid; void* l_len; void* l_start; int l_whence; } ;
typedef scalar_t__ pid_t ;
typedef void* off_t ;


 int F_RDLCK ;
 int F_UNLCK ;
 int F_WRLCK ;




__attribute__((used)) static void
linux_to_bsd_flock(struct l_flock *linux_flock, struct flock *bsd_flock)
{
 switch (linux_flock->l_type) {
 case 130:
  bsd_flock->l_type = F_RDLCK;
  break;
 case 128:
  bsd_flock->l_type = F_WRLCK;
  break;
 case 129:
  bsd_flock->l_type = F_UNLCK;
  break;
 default:
  bsd_flock->l_type = -1;
  break;
 }
 bsd_flock->l_whence = linux_flock->l_whence;
 bsd_flock->l_start = (off_t)linux_flock->l_start;
 bsd_flock->l_len = (off_t)linux_flock->l_len;
 bsd_flock->l_pid = (pid_t)linux_flock->l_pid;
 bsd_flock->l_sysid = 0;
}
