
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int addrlen; int addr; } ;
struct comm_point {scalar_t__ type; int fd; int max_tcp_count; int cur_tcp_count; struct comm_point* tcp_free; scalar_t__ ssl; int ssl_shake_state; TYPE_3__ repinfo; TYPE_2__* ev; } ;
struct TYPE_8__ {TYPE_1__* eb; } ;
struct TYPE_6__ {int ev; TYPE_4__* base; } ;
struct TYPE_5__ {int base; } ;


 short UB_EV_PERSIST ;
 short UB_EV_READ ;
 short UB_EV_TIMEOUT ;
 int comm_point_close (struct comm_point*) ;
 int comm_point_perform_accept (struct comm_point*,int *,int *) ;
 int comm_point_stop_listening (struct comm_point*) ;
 int comm_point_tcp_handle_callback ;
 int comm_point_tcp_win_bio_cb (struct comm_point*,scalar_t__) ;
 int comm_ssl_shake_read ;
 scalar_t__ comm_tcp_accept ;
 scalar_t__ incoming_ssl_fd (scalar_t__,int) ;
 int log_assert (int) ;
 int log_info (char*,int) ;
 int log_warn (char*) ;
 int setup_tcp_handler (struct comm_point*,int,int ,int ) ;
 int ub_comm_base_now (TYPE_4__*) ;
 int ub_event_free (int ) ;
 int ub_event_new (int ,int,short,int ,struct comm_point*) ;

void
comm_point_tcp_accept_callback(int fd, short event, void* arg)
{
 struct comm_point* c = (struct comm_point*)arg, *c_hdl;
 int new_fd;
 log_assert(c->type == comm_tcp_accept);
 if(!(event & UB_EV_READ)) {
  log_info("ignoring tcp accept event %d", (int)event);
  return;
 }
 ub_comm_base_now(c->ev->base);

 if(!c->tcp_free) {
  log_warn("accepted too many tcp, connections full");
  return;
 }

 c_hdl = c->tcp_free;


 ub_event_free(c_hdl->ev->ev);
 c_hdl->ev->ev = ub_event_new(c_hdl->ev->base->eb->base, -1, UB_EV_PERSIST | UB_EV_READ | UB_EV_TIMEOUT, comm_point_tcp_handle_callback, c_hdl);
 if(!c_hdl->ev->ev) {
  log_warn("could not ub_event_new, dropped tcp");
  return;
 }
 log_assert(fd != -1);
 (void)fd;
 new_fd = comm_point_perform_accept(c, &c_hdl->repinfo.addr,
  &c_hdl->repinfo.addrlen);
 if(new_fd == -1)
  return;
 if(c->ssl) {
  c_hdl->ssl = incoming_ssl_fd(c->ssl, new_fd);
  if(!c_hdl->ssl) {
   c_hdl->fd = new_fd;
   comm_point_close(c_hdl);
   return;
  }
  c_hdl->ssl_shake_state = comm_ssl_shake_read;



 }


 c->cur_tcp_count++;
 c->tcp_free = c_hdl->tcp_free;
 if(!c->tcp_free) {

  comm_point_stop_listening(c);
 }
 setup_tcp_handler(c_hdl, new_fd, c->cur_tcp_count, c->max_tcp_count);
}
