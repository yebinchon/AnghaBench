
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct outside_network {int udp_buff; int base; int tcp_mss; } ;
struct TYPE_2__ {int addr; int addrlen; } ;
struct comm_point {int buffer; TYPE_1__ repinfo; } ;
typedef int socklen_t ;
typedef int comm_point_callback_type ;


 int close (int) ;
 struct comm_point* comm_point_create_http_out (int ,int,int *,void*,int ) ;
 int comm_point_delete (struct comm_point*) ;
 int comm_point_start_listening (struct comm_point*,int,int) ;
 int fd_set_nonblock (int) ;
 int log_err (char*) ;
 int memcpy (int *,struct sockaddr_storage*,int ) ;
 int outnet_get_tcp_fd (struct sockaddr_storage*,int ,int ) ;
 int outnet_tcp_connect (int,struct sockaddr_storage*,int ) ;
 int setup_comm_ssl (struct comm_point*,struct outside_network*,int,char*) ;
 int setup_http_request (int ,char*,char*) ;

struct comm_point*
outnet_comm_point_for_http(struct outside_network* outnet,
 comm_point_callback_type* cb, void* cb_arg,
 struct sockaddr_storage* to_addr, socklen_t to_addrlen, int timeout,
 int ssl, char* host, char* path)
{

 struct comm_point* cp;
 int fd = outnet_get_tcp_fd(to_addr, to_addrlen, outnet->tcp_mss);
 if(fd == -1) {
  return 0;
 }
 fd_set_nonblock(fd);
 if(!outnet_tcp_connect(fd, to_addr, to_addrlen)) {

  return 0;
 }
 cp = comm_point_create_http_out(outnet->base, 65552, cb, cb_arg,
  outnet->udp_buff);
 if(!cp) {
  log_err("malloc failure");
  close(fd);
  return 0;
 }
 cp->repinfo.addrlen = to_addrlen;
 memcpy(&cp->repinfo.addr, to_addr, to_addrlen);


 if(ssl) {
  if(!setup_comm_ssl(cp, outnet, fd, host)) {
   log_err("cannot setup https");
   comm_point_delete(cp);
   return ((void*)0);
  }
 }


 comm_point_start_listening(cp, fd, timeout);


 if(!setup_http_request(cp->buffer, host, path)) {
  log_err("error setting up http request");
  comm_point_delete(cp);
  return ((void*)0);
 }
 return cp;
}
