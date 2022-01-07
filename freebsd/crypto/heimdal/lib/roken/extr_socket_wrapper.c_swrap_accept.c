
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int un_my_addr ;
typedef int un_addr ;
struct socket_info {int fd; int bound; int is_server; void* myname; scalar_t__ myname_len; int family; void* peername; scalar_t__ peername_len; int protocol; int type; } ;
struct sockaddr_un {int fd; int bound; int is_server; void* myname; scalar_t__ myname_len; int family; void* peername; scalar_t__ peername_len; int protocol; int type; } ;
struct sockaddr {int fd; int bound; int is_server; void* myname; scalar_t__ myname_len; int family; void* peername; scalar_t__ peername_len; int protocol; int type; } ;
typedef scalar_t__ socklen_t ;


 int EINVAL ;
 int SWRAP_ACCEPT_ACK ;
 int SWRAP_ACCEPT_RECV ;
 int SWRAP_ACCEPT_SEND ;
 int SWRAP_DLIST_ADD (int ,struct socket_info*) ;
 int close (int) ;
 int errno ;
 struct socket_info* find_socket_info (int) ;
 int free (struct socket_info*) ;
 struct socket_info* malloc (int) ;
 int memcpy (struct socket_info*,struct socket_info*,scalar_t__) ;
 int memset (struct socket_info*,int ,int) ;
 int real_accept (int,struct socket_info*,scalar_t__*) ;
 int real_getsockname (int,struct socket_info*,scalar_t__*) ;
 int sockaddr_convert_from_un (struct socket_info*,struct socket_info*,scalar_t__,int ,struct socket_info*,scalar_t__*) ;
 void* sockaddr_dup (struct socket_info*,scalar_t__) ;
 scalar_t__ socket_length (int ) ;
 int sockets ;
 int swrap_dump_packet (struct socket_info*,struct socket_info*,int ,int *,int ) ;

int swrap_accept(int s, struct sockaddr *addr, socklen_t *addrlen)
{
 struct socket_info *parent_si, *child_si;
 int fd;
 struct sockaddr_un un_addr;
 socklen_t un_addrlen = sizeof(un_addr);
 struct sockaddr_un un_my_addr;
 socklen_t un_my_addrlen = sizeof(un_my_addr);
 struct sockaddr *my_addr;
 socklen_t my_addrlen, len;
 int ret;

 parent_si = find_socket_info(s);
 if (!parent_si) {
  return real_accept(s, addr, addrlen);
 }





 my_addrlen = socket_length(parent_si->family);
 if (my_addrlen < 0) {
  errno = EINVAL;
  return -1;
 }

 my_addr = malloc(my_addrlen);
 if (my_addr == ((void*)0)) {
  return -1;
 }

 memset(&un_addr, 0, sizeof(un_addr));
 memset(&un_my_addr, 0, sizeof(un_my_addr));

 ret = real_accept(s, (struct sockaddr *)&un_addr, &un_addrlen);
 if (ret == -1) {
  free(my_addr);
  return ret;
 }

 fd = ret;

 len = my_addrlen;
 ret = sockaddr_convert_from_un(parent_si, &un_addr, un_addrlen,
           parent_si->family, my_addr, &len);
 if (ret == -1) {
  free(my_addr);
  close(fd);
  return ret;
 }

 child_si = (struct socket_info *)malloc(sizeof(struct socket_info));
 memset(child_si, 0, sizeof(*child_si));

 child_si->fd = fd;
 child_si->family = parent_si->family;
 child_si->type = parent_si->type;
 child_si->protocol = parent_si->protocol;
 child_si->bound = 1;
 child_si->is_server = 1;

 child_si->peername_len = len;
 child_si->peername = sockaddr_dup(my_addr, len);

 if (addr != ((void*)0) && addrlen != ((void*)0)) {
     *addrlen = len;
     if (*addrlen >= len)
  memcpy(addr, my_addr, len);
     *addrlen = 0;
 }

 ret = real_getsockname(fd, (struct sockaddr *)&un_my_addr, &un_my_addrlen);
 if (ret == -1) {
  free(child_si);
  close(fd);
  return ret;
 }

 len = my_addrlen;
 ret = sockaddr_convert_from_un(child_si, &un_my_addr, un_my_addrlen,
           child_si->family, my_addr, &len);
 if (ret == -1) {
  free(child_si);
  free(my_addr);
  close(fd);
  return ret;
 }

 child_si->myname_len = len;
 child_si->myname = sockaddr_dup(my_addr, len);
 free(my_addr);

 SWRAP_DLIST_ADD(sockets, child_si);

 swrap_dump_packet(child_si, addr, SWRAP_ACCEPT_SEND, ((void*)0), 0);
 swrap_dump_packet(child_si, addr, SWRAP_ACCEPT_RECV, ((void*)0), 0);
 swrap_dump_packet(child_si, addr, SWRAP_ACCEPT_ACK, ((void*)0), 0);

 return fd;
}
