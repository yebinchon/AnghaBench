
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int addrlen; int addr; } ;
struct comm_point {scalar_t__ type; int tcp_byte_count; int buffer; TYPE_2__ repinfo; TYPE_1__* ev; scalar_t__ tcp_req_info; int tcp_is_reading; scalar_t__ ssl; } ;
typedef int ssize_t ;
struct TYPE_3__ {int ev; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ ECONNRESET ;
 scalar_t__ EINTR ;
 scalar_t__ LDNS_HEADER_SIZE ;
 int UB_EV_READ ;
 int VERB_ALGO ;
 int VERB_QUERY ;
 scalar_t__ WSAECONNRESET ;
 scalar_t__ WSAEINPROGRESS ;
 scalar_t__ WSAEWOULDBLOCK ;
 scalar_t__ WSAGetLastError () ;
 scalar_t__ comm_local ;
 scalar_t__ comm_tcp ;
 scalar_t__ errno ;
 int log_assert (int) ;
 int log_err_addr (char*,int ,int *,int ) ;
 int recv (int,void*,int,int ) ;
 scalar_t__ sldns_buffer_at (int ,int) ;
 scalar_t__ sldns_buffer_capacity (int ) ;
 scalar_t__ sldns_buffer_current (int ) ;
 scalar_t__ sldns_buffer_limit (int ) ;
 scalar_t__ sldns_buffer_read_u16_at (int ,int ) ;
 int sldns_buffer_remaining (int ) ;
 int sldns_buffer_set_limit (int ,scalar_t__) ;
 int sldns_buffer_skip (int ,int) ;
 int ssl_handle_it (struct comm_point*) ;
 int strerror (scalar_t__) ;
 int tcp_callback_reader (struct comm_point*) ;
 int tcp_req_info_handle_read_close (scalar_t__) ;
 int ub_winsock_tcp_wouldblock (int ,int ) ;
 int verbose (int ,char*,...) ;
 int verbosity ;
 int wsa_strerror (scalar_t__) ;

__attribute__((used)) static int
comm_point_tcp_handle_read(int fd, struct comm_point* c, int short_ok)
{
 ssize_t r;
 log_assert(c->type == comm_tcp || c->type == comm_local);
 if(c->ssl)
  return ssl_handle_it(c);
 if(!c->tcp_is_reading)
  return 0;

 log_assert(fd != -1);
 if(c->tcp_byte_count < sizeof(uint16_t)) {

  r = recv(fd,(void*)sldns_buffer_at(c->buffer,c->tcp_byte_count),
   sizeof(uint16_t)-c->tcp_byte_count, 0);
  if(r == 0) {
   if(c->tcp_req_info)
    return tcp_req_info_handle_read_close(c->tcp_req_info);
   return 0;
  } else if(r == -1) {

   if(errno == EINTR || errno == EAGAIN)
    return 1;




   log_err_addr("read (in tcp s)", strerror(errno),
    &c->repinfo.addr, c->repinfo.addrlen);
   return 0;
  }
  c->tcp_byte_count += r;
  if(c->tcp_byte_count != sizeof(uint16_t))
   return 1;
  if(sldns_buffer_read_u16_at(c->buffer, 0) >
   sldns_buffer_capacity(c->buffer)) {
   verbose(VERB_QUERY, "tcp: dropped larger than buffer");
   return 0;
  }
  sldns_buffer_set_limit(c->buffer,
   sldns_buffer_read_u16_at(c->buffer, 0));
  if(!short_ok &&
   sldns_buffer_limit(c->buffer) < LDNS_HEADER_SIZE) {
   verbose(VERB_QUERY, "tcp: dropped bogus too short.");
   return 0;
  }
  verbose(VERB_ALGO, "Reading tcp query of length %d",
   (int)sldns_buffer_limit(c->buffer));
 }

 log_assert(sldns_buffer_remaining(c->buffer) > 0);
 r = recv(fd, (void*)sldns_buffer_current(c->buffer),
  sldns_buffer_remaining(c->buffer), 0);
 if(r == 0) {
  if(c->tcp_req_info)
   return tcp_req_info_handle_read_close(c->tcp_req_info);
  return 0;
 } else if(r == -1) {

  if(errno == EINTR || errno == EAGAIN)
   return 1;
  log_err_addr("read (in tcp r)", strerror(errno),
   &c->repinfo.addr, c->repinfo.addrlen);
  return 0;
 }
 sldns_buffer_skip(c->buffer, r);
 if(sldns_buffer_remaining(c->buffer) <= 0) {
  tcp_callback_reader(c);
 }
 return 1;
}
