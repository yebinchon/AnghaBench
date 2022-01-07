
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_info {int fd; } ;


 int dup_internal (struct socket_info*,int) ;
 struct socket_info* find_socket_info (int) ;
 int real_dup2 (int,int) ;
 int swrap_close (int) ;

int swrap_dup2(int oldd, int newd)
{
 struct socket_info *si_newd, *si_oldd;
 int fd;

 if (newd == oldd)
     return newd;

 si_oldd = find_socket_info(oldd);
 si_newd = find_socket_info(newd);

 if (si_oldd == ((void*)0) && si_newd == ((void*)0))
  return real_dup2(oldd, newd);

 fd = real_dup2(si_oldd->fd, newd);
 if (fd < 0)
  return fd;


 if (si_newd)
         swrap_close(newd);

 return dup_internal(si_oldd, fd);
}
