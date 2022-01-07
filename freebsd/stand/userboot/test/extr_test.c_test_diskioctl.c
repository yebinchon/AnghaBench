
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct stat {int st_size; } ;
typedef int off_t ;




 int EBADF ;
 int ENOTTY ;
 int* disk_fd ;
 int disk_index ;
 int fstat (int,struct stat*) ;

int
test_diskioctl(void *arg, int unit, u_long cmd, void *data)
{
 struct stat sb;

 if (unit > disk_index || disk_fd[unit] == -1)
  return (EBADF);
 switch (cmd) {
 case 128:
  *(u_int *)data = 512;
  break;
 case 129:
  if (fstat(disk_fd[unit], &sb) == 0)
   *(off_t *)data = sb.st_size;
  else
   return (ENOTTY);
  break;
 default:
  return (ENOTTY);
 }
 return (0);
}
