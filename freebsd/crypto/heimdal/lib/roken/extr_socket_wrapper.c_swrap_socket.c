
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_info {int family; int type; int protocol; int fd; } ;





 int EAFNOSUPPORT ;
 int EPROTONOSUPPORT ;


 int SWRAP_DLIST_ADD (int ,struct socket_info*) ;
 scalar_t__ calloc (int,int) ;
 int errno ;
 int real_socket (int const,int,int) ;
 int socket_wrapper_dir () ;
 int sockets ;

int swrap_socket(int family, int type, int protocol)
{
 struct socket_info *si;
 int fd;

 if (!socket_wrapper_dir()) {
  return real_socket(family, type, protocol);
 }

 switch (family) {
 case 132:



  break;
 case 130:
  return real_socket(family, type, protocol);
 default:
  errno = EAFNOSUPPORT;
  return -1;
 }

 switch (type) {
 case 128:
  break;
 case 129:
  break;
 default:
  errno = EPROTONOSUPPORT;
  return -1;
 }
 fd = real_socket(130, type, 0);

 if (fd == -1) return -1;

 si = (struct socket_info *)calloc(1, sizeof(struct socket_info));

 si->family = family;
 si->type = type;
 si->protocol = protocol;
 si->fd = fd;

 SWRAP_DLIST_ADD(sockets, si);

 return si->fd;
}
