
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct outside_network {int udp_buff; int base; } ;
struct comm_point {int dummy; } ;
typedef int socklen_t ;
typedef int comm_point_callback_type ;


 int close (int) ;
 struct comm_point* comm_point_create_udp (int ,int,int ,int *,void*) ;
 int fd_for_dest (struct outside_network*,struct sockaddr_storage*,int ) ;
 int log_err (char*) ;

struct comm_point*
outnet_comm_point_for_udp(struct outside_network* outnet,
 comm_point_callback_type* cb, void* cb_arg,
 struct sockaddr_storage* to_addr, socklen_t to_addrlen)
{
 struct comm_point* cp;
 int fd = fd_for_dest(outnet, to_addr, to_addrlen);
 if(fd == -1) {
  return ((void*)0);
 }
 cp = comm_point_create_udp(outnet->base, fd, outnet->udp_buff,
  cb, cb_arg);
 if(!cp) {
  log_err("malloc failure");
  close(fd);
  return ((void*)0);
 }
 return cp;
}
