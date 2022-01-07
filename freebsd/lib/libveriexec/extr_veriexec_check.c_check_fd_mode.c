
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {unsigned int st_mode; } ;


 int EAUTH ;
 int errno ;
 scalar_t__ fstat (int,struct stat*) ;

__attribute__((used)) static int
check_fd_mode(int fd, unsigned int mask)
{
 struct stat st;

 if (fstat(fd, &st) < 0)
  return errno;

 if ((st.st_mode & mask) == 0)
  return EAUTH;

 return 0;
}
