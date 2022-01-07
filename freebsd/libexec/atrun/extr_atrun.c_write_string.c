
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 int write (int,char const*,int ) ;

__attribute__((used)) static int
write_string(int fd, const char* a)
{
    return write(fd, a, strlen(a));
}
