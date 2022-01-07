
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct comm_point {scalar_t__ type; int tcl_addr; scalar_t__ tcp_conn_limit; TYPE_2__* ev; int fd; } ;
struct comm_base {TYPE_1__* eb; int cb_arg; int (* stop_accept ) (int ) ;} ;
typedef scalar_t__ socklen_t ;
struct TYPE_4__ {int ev; struct comm_base* base; } ;
struct TYPE_3__ {int slow_accept_enabled; int * slow_accept; int base; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ ECONNABORTED ;
 scalar_t__ EINTR ;
 scalar_t__ EMFILE ;
 scalar_t__ ENFILE ;
 scalar_t__ EPROTO ;
 scalar_t__ EWOULDBLOCK ;
 int NETEVENT_SLOW_ACCEPT_TIME ;
 int SOCK_NONBLOCK ;
 int UB_EV_READ ;
 int UB_EV_TIMEOUT ;
 int VERB_ALGO ;
 scalar_t__ WSAECONNRESET ;
 scalar_t__ WSAEINPROGRESS ;
 scalar_t__ WSAEWOULDBLOCK ;
 scalar_t__ WSAGetLastError () ;
 int accept (int ,struct sockaddr*,scalar_t__*) ;
 int accept4 (int ,struct sockaddr*,scalar_t__*,int ) ;
 int close (int) ;
 int comm_base_handle_slow_accept ;
 scalar_t__ comm_tcp_accept ;
 scalar_t__ errno ;
 int fd_set_nonblock (int) ;
 int fptr_ok (int ) ;
 int fptr_whitelist_stop_accept (int (*) (int )) ;
 int log_err_addr (char*,char*,struct sockaddr_storage*,scalar_t__) ;
 char* strerror (scalar_t__) ;
 int stub1 (int ) ;
 int tcl_addr_lookup (scalar_t__,struct sockaddr_storage*,scalar_t__) ;
 int tcl_new_connection (int ) ;
 scalar_t__ ub_event_add (int *,struct timeval*) ;
 int * ub_event_new (int ,int,int ,int ,struct comm_base*) ;
 int ub_winsock_tcp_wouldblock (int ,int ) ;
 int verbose (int ,char*) ;
 int verbosity ;
 char* wsa_strerror (scalar_t__) ;

int comm_point_perform_accept(struct comm_point* c,
 struct sockaddr_storage* addr, socklen_t* addrlen)
{
 int new_fd;
 *addrlen = (socklen_t)sizeof(*addr);

 new_fd = accept(c->fd, (struct sockaddr*)addr, addrlen);




 if(new_fd == -1) {


  if( errno == EINTR || errno == EAGAIN
   )
   return -1;
  log_err_addr("accept failed", strerror(errno), addr, *addrlen);
  return -1;
 }
 if(c->tcp_conn_limit && c->type == comm_tcp_accept) {
  c->tcl_addr = tcl_addr_lookup(c->tcp_conn_limit, addr, *addrlen);
  if(!tcl_new_connection(c->tcl_addr)) {
   if(verbosity >= 3)
    log_err_addr("accept rejected",
    "connection limit exceeded", addr, *addrlen);
   close(new_fd);
   return -1;
  }
 }

 fd_set_nonblock(new_fd);

 return new_fd;
}
