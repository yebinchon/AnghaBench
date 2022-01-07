
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 int write (int,char const*,int ) ;

void
rtld_fdputstr(int fd, const char *str)
{

 write(fd, str, strlen(str));
}
