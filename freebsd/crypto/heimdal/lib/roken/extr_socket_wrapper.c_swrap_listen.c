
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_info {int dummy; } ;


 struct socket_info* find_socket_info (int) ;
 int real_listen (int,int) ;

int swrap_listen(int s, int backlog)
{
 int ret;
 struct socket_info *si = find_socket_info(s);

 if (!si) {
  return real_listen(s, backlog);
 }

 ret = real_listen(s, backlog);

 return ret;
}
