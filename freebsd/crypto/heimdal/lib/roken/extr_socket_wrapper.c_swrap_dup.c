
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_info {int fd; } ;


 int dup_internal (struct socket_info*,int) ;
 struct socket_info* find_socket_info (int) ;
 int real_dup (int) ;

int swrap_dup(int oldd)
{
 struct socket_info *si;
 int fd;

 si = find_socket_info(oldd);
 if (si == ((void*)0))
  return real_dup(oldd);

 fd = real_dup(si->fd);
 if (fd < 0)
  return fd;

 return dup_internal(si, fd);
}
