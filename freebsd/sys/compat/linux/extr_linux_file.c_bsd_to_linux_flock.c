
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l_flock {scalar_t__ l_pid; void* l_len; void* l_start; int l_whence; int l_type; } ;
struct flock {int l_type; scalar_t__ l_pid; scalar_t__ l_len; scalar_t__ l_start; int l_whence; } ;
typedef scalar_t__ l_pid_t ;
typedef void* l_off_t ;





 int LINUX_F_RDLCK ;
 int LINUX_F_UNLCK ;
 int LINUX_F_WRLCK ;

__attribute__((used)) static void
bsd_to_linux_flock(struct flock *bsd_flock, struct l_flock *linux_flock)
{
 switch (bsd_flock->l_type) {
 case 130:
  linux_flock->l_type = LINUX_F_RDLCK;
  break;
 case 128:
  linux_flock->l_type = LINUX_F_WRLCK;
  break;
 case 129:
  linux_flock->l_type = LINUX_F_UNLCK;
  break;
 }
 linux_flock->l_whence = bsd_flock->l_whence;
 linux_flock->l_start = (l_off_t)bsd_flock->l_start;
 linux_flock->l_len = (l_off_t)bsd_flock->l_len;
 linux_flock->l_pid = (l_pid_t)bsd_flock->l_pid;
}
