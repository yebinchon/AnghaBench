
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WNOHANG ;
 int errno ;
 scalar_t__ waitpid (int,int*,int ) ;

__attribute__((used)) static void
chld_handler(int x)
{
 int status, serrno;

 (void)x;
 serrno = errno;
 while (waitpid(-1, &status, WNOHANG) > 0)
  ;
 errno = serrno;
}
