
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sys_write (int,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void
pstr(int fd, const char *s)
{

 __sys_write(fd, s, strlen(s));
}
