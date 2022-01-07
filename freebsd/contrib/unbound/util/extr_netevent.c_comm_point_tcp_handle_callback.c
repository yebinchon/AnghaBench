
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comm_point {scalar_t__ type; scalar_t__ dnscrypt_buffer; scalar_t__ buffer; TYPE_3__* tcp_req_info; int cb_arg; int (* callback ) (struct comm_point*,int ,int ,int *) ;int tcp_do_close; scalar_t__ dnscrypt; TYPE_2__* tcp_parent; TYPE_1__* ev; } ;
struct TYPE_6__ {scalar_t__ read_again; } ;
struct TYPE_5__ {scalar_t__ dnscrypt; } ;
struct TYPE_4__ {int base; } ;


 int NETEVENT_CLOSED ;
 int NETEVENT_TIMEOUT ;
 short UB_EV_READ ;
 short UB_EV_TIMEOUT ;
 short UB_EV_WRITE ;
 int VERB_QUERY ;
 int comm_point_tcp_handle_read (int,struct comm_point*,int ) ;
 int comm_point_tcp_handle_write (int,struct comm_point*) ;
 scalar_t__ comm_tcp ;
 int fptr_ok (int ) ;
 int fptr_whitelist_comm_point (int (*) (struct comm_point*,int ,int ,int *)) ;
 int log_assert (int) ;
 int log_err (char*,...) ;
 int reclaim_tcp_handler (struct comm_point*) ;
 int sldns_buffer_capacity (scalar_t__) ;
 scalar_t__ sldns_buffer_new (int ) ;
 int stub1 (struct comm_point*,int ,int ,int *) ;
 int stub2 (struct comm_point*,int ,int ,int *) ;
 int stub3 (struct comm_point*,int ,int ,int *) ;
 int stub4 (struct comm_point*,int ,int ,int *) ;
 int tcp_req_info_read_again (int,struct comm_point*) ;
 int ub_comm_base_now (int ) ;
 int verbose (int ,char*) ;

void
comm_point_tcp_handle_callback(int fd, short event, void* arg)
{
 struct comm_point* c = (struct comm_point*)arg;
 log_assert(c->type == comm_tcp);
 ub_comm_base_now(c->ev->base);
 if(event&UB_EV_TIMEOUT) {
  verbose(VERB_QUERY, "tcp took too long, dropped");
  reclaim_tcp_handler(c);
  if(!c->tcp_do_close) {
   fptr_ok(fptr_whitelist_comm_point(c->callback));
   (void)(*c->callback)(c, c->cb_arg,
    NETEVENT_TIMEOUT, ((void*)0));
  }
  return;
 }
 if(event&UB_EV_READ) {
  int has_tcpq = (c->tcp_req_info != ((void*)0));
  if(!comm_point_tcp_handle_read(fd, c, 0)) {
   reclaim_tcp_handler(c);
   if(!c->tcp_do_close) {
    fptr_ok(fptr_whitelist_comm_point(
     c->callback));
    (void)(*c->callback)(c, c->cb_arg,
     NETEVENT_CLOSED, ((void*)0));
   }
  }
  if(has_tcpq && c->tcp_req_info && c->tcp_req_info->read_again)
   tcp_req_info_read_again(fd, c);
  return;
 }
 if(event&UB_EV_WRITE) {
  int has_tcpq = (c->tcp_req_info != ((void*)0));
  if(!comm_point_tcp_handle_write(fd, c)) {
   reclaim_tcp_handler(c);
   if(!c->tcp_do_close) {
    fptr_ok(fptr_whitelist_comm_point(
     c->callback));
    (void)(*c->callback)(c, c->cb_arg,
     NETEVENT_CLOSED, ((void*)0));
   }
  }
  if(has_tcpq && c->tcp_req_info && c->tcp_req_info->read_again)
   tcp_req_info_read_again(fd, c);
  return;
 }
 log_err("Ignored event %d for tcphdl.", event);
}
