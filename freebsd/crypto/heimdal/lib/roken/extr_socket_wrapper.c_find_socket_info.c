
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_info {int fd; struct socket_info* next; } ;


 struct socket_info* sockets ;

__attribute__((used)) static struct socket_info *find_socket_info(int fd)
{
 struct socket_info *i;
 for (i = sockets; i; i = i->next) {
  if (i->fd == fd)
   return i;
 }

 return ((void*)0);
}
