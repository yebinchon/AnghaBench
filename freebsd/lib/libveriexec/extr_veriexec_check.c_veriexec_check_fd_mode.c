
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

 int MAC_VERIEXEC_CHECK_FD_SYSCALL ;
 int MAC_VERIEXEC_NAME ;
 int check_fd_mode (int,unsigned int) ;
 int errno ;
 int mac_syscall (int ,int ,void*) ;

int
veriexec_check_fd_mode(int fd, unsigned int mask)
{
 int error;

 if (fd < 0) {
  errno = EINVAL;
  return -1;
 }

 error = mac_syscall(MAC_VERIEXEC_NAME, MAC_VERIEXEC_CHECK_FD_SYSCALL,
     (void *)(intptr_t)fd);
 if (error == -1) {
  switch (errno) {
  case 128:
   error = 0;
   break;
  }
 }
 if (mask && error == 0)
     error = check_fd_mode(fd, mask);

 return (error);
}
