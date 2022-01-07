
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int veriexec_check_fd_mode (int,int ) ;

int
veriexec_check_fd(int fd)
{
 return veriexec_check_fd_mode(fd, 0);
}
