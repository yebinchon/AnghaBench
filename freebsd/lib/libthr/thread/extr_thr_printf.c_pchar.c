
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sys_write (int,char*,int) ;

__attribute__((used)) static void
pchar(int fd, char c)
{

 __sys_write(fd, &c, 1);
}
