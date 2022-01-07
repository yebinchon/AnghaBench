
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int addrlen; int addr; } ;
struct comm_point {int buffer; TYPE_2__ repinfo; TYPE_1__* ev; } ;
typedef int ssize_t ;
struct TYPE_3__ {int ev; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int UB_EV_READ ;
 scalar_t__ WSAECONNRESET ;
 scalar_t__ WSAEINPROGRESS ;
 scalar_t__ WSAEWOULDBLOCK ;
 scalar_t__ WSAGetLastError () ;
 scalar_t__ errno ;
 int log_assert (int) ;
 int log_err_addr (char*,int ,int *,int ) ;
 int recv (int,void*,scalar_t__,int ) ;
 scalar_t__ sldns_buffer_current (int ) ;
 scalar_t__ sldns_buffer_remaining (int ) ;
 int sldns_buffer_skip (int ,int) ;
 int strerror (scalar_t__) ;
 int ub_winsock_tcp_wouldblock (int ,int ) ;
 int wsa_strerror (scalar_t__) ;

__attribute__((used)) static int
http_read_more(int fd, struct comm_point* c)
{
 ssize_t r;
 log_assert(sldns_buffer_remaining(c->buffer) > 0);
 r = recv(fd, (void*)sldns_buffer_current(c->buffer),
  sldns_buffer_remaining(c->buffer), 0);
 if(r == 0) {
  return 0;
 } else if(r == -1) {

  if(errno == EINTR || errno == EAGAIN)
   return 1;
  log_err_addr("read (in http r)", strerror(errno),
   &c->repinfo.addr, c->repinfo.addrlen);
  return 0;
 }
 sldns_buffer_skip(c->buffer, r);
 return 1;
}
