
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDERR_FILENO ;
 int __sys_write (int ,char const*,int ) ;
 int errno ;
 int strlen (char const*) ;

void
__utrap_write(const char *str)
{
 int berrno;

 berrno = errno;
 __sys_write(STDERR_FILENO, str, strlen(str));
 errno = berrno;
}
