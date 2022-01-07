
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct sldns_buffer {int dummy; } ;
struct comm_reply {struct comm_point* c; scalar_t__ addrlen; int addr; scalar_t__ srctype; } ;
struct comm_point {scalar_t__ type; int fd; struct sldns_buffer* buffer; struct sldns_buffer* dnscrypt_buffer; int cb_arg; scalar_t__ (* callback ) (struct comm_point*,int ,int ,struct comm_reply*) ;TYPE_1__* ev; } ;
typedef int ssize_t ;
typedef scalar_t__ socklen_t ;
struct TYPE_2__ {int base; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int NETEVENT_NOERROR ;
 int NUM_UDP_PER_SELECT ;
 short UB_EV_READ ;
 scalar_t__ WSAECONNRESET ;
 scalar_t__ WSAEINPROGRESS ;
 scalar_t__ WSAEWOULDBLOCK ;
 scalar_t__ WSAGetLastError () ;
 int comm_point_send_udp_msg (struct comm_point*,struct sldns_buffer*,struct sockaddr*,scalar_t__) ;
 scalar_t__ comm_udp ;
 scalar_t__ errno ;
 int fptr_ok (int ) ;
 int fptr_whitelist_comm_point (scalar_t__ (*) (struct comm_point*,int ,int ,struct comm_reply*)) ;
 int log_assert (int) ;
 int log_err (char*,int,...) ;
 int recvfrom (int,void*,scalar_t__,int ,struct sockaddr*,scalar_t__*) ;
 scalar_t__ sldns_buffer_begin (struct sldns_buffer*) ;
 int sldns_buffer_clear (struct sldns_buffer*) ;
 int sldns_buffer_flip (struct sldns_buffer*) ;
 scalar_t__ sldns_buffer_remaining (struct sldns_buffer*) ;
 int sldns_buffer_skip (struct sldns_buffer*,int) ;
 int strerror (scalar_t__) ;
 scalar_t__ stub1 (struct comm_point*,int ,int ,struct comm_reply*) ;
 int ub_comm_base_now (int ) ;
 int wsa_strerror (scalar_t__) ;

void
comm_point_udp_callback(int fd, short event, void* arg)
{
 struct comm_reply rep;
 ssize_t rcv;
 int i;
 struct sldns_buffer *buffer;

 rep.c = (struct comm_point*)arg;
 log_assert(rep.c->type == comm_udp);

 if(!(event&UB_EV_READ))
  return;
 log_assert(rep.c && rep.c->buffer && rep.c->fd == fd);
 ub_comm_base_now(rep.c->ev->base);
 for(i=0; i<NUM_UDP_PER_SELECT; i++) {
  sldns_buffer_clear(rep.c->buffer);
  rep.addrlen = (socklen_t)sizeof(rep.addr);
  log_assert(fd != -1);
  log_assert(sldns_buffer_remaining(rep.c->buffer) > 0);
  rcv = recvfrom(fd, (void*)sldns_buffer_begin(rep.c->buffer),
   sldns_buffer_remaining(rep.c->buffer), 0,
   (struct sockaddr*)&rep.addr, &rep.addrlen);
  if(rcv == -1) {

   if(errno != EAGAIN && errno != EINTR)
    log_err("recvfrom %d failed: %s",
     fd, strerror(errno));







   return;
  }
  sldns_buffer_skip(rep.c->buffer, rcv);
  sldns_buffer_flip(rep.c->buffer);
  rep.srctype = 0;
  fptr_ok(fptr_whitelist_comm_point(rep.c->callback));
  if((*rep.c->callback)(rep.c, rep.c->cb_arg, NETEVENT_NOERROR, &rep)) {




   buffer = rep.c->buffer;

   (void)comm_point_send_udp_msg(rep.c, buffer,
    (struct sockaddr*)&rep.addr, rep.addrlen);
  }
  if(!rep.c || rep.c->fd != fd)

   break;
 }
}
