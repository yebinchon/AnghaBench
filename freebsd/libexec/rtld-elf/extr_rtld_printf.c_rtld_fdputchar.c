
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int write (int,char*,int) ;

void
rtld_fdputchar(int fd, int c)
{
 char c1;

 c1 = c;
 write(fd, &c1, 1);
}
