
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int sprintf (char*,char*,int) ;
 int write (int,char*,size_t) ;

__attribute__((used)) static int
put_pid(int fd, pid_t pid)
{
 char buf[32];
 int len;

 len = sprintf (buf, "%10d\n", (int)pid);
 return write (fd, buf, (size_t)len) == len;
}
