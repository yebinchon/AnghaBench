
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
struct comm_point {int fd; scalar_t__ type; struct timeval* timeout; TYPE_1__* ev; scalar_t__ tcp_is_reading; int tcp_free; } ;
struct TYPE_2__ {int ev; } ;


 int UB_EV_READ ;
 int UB_EV_TIMEOUT ;
 int UB_EV_WRITE ;
 int VERB_ALGO ;
 int close (int) ;
 int closesocket (int) ;
 scalar_t__ comm_http ;
 scalar_t__ comm_tcp ;
 scalar_t__ comm_tcp_accept ;
 int log_err (char*) ;
 scalar_t__ malloc (int) ;
 scalar_t__ ub_event_add (int ,struct timeval*) ;
 int ub_event_add_bits (int ,int) ;
 int ub_event_del_bits (int ,int) ;
 int ub_event_set_fd (int ,int) ;
 int verbose (int ,char*,int,int) ;

void
comm_point_start_listening(struct comm_point* c, int newfd, int msec)
{
 verbose(VERB_ALGO, "comm point start listening %d (%d msec)",
  c->fd==-1?newfd:c->fd, msec);
 if(c->type == comm_tcp_accept && !c->tcp_free) {

  return;
 }
 if(msec != -1 && msec != 0) {
  if(!c->timeout) {
   c->timeout = (struct timeval*)malloc(sizeof(
    struct timeval));
   if(!c->timeout) {
    log_err("cpsl: malloc failed. No net read.");
    return;
   }
  }
  ub_event_add_bits(c->ev->ev, UB_EV_TIMEOUT);

  c->timeout->tv_sec = msec/1000;
  c->timeout->tv_usec = (msec%1000)*1000;

 }
 if(c->type == comm_tcp || c->type == comm_http) {
  ub_event_del_bits(c->ev->ev, UB_EV_READ|UB_EV_WRITE);
  if(c->tcp_is_reading)
   ub_event_add_bits(c->ev->ev, UB_EV_READ);
  else ub_event_add_bits(c->ev->ev, UB_EV_WRITE);
 }
 if(newfd != -1) {
  if(c->fd != -1) {

   close(c->fd);



  }
  c->fd = newfd;
  ub_event_set_fd(c->ev->ev, c->fd);
 }
 if(ub_event_add(c->ev->ev, msec==0?((void*)0):c->timeout) != 0) {
  log_err("event_add failed. in cpsl.");
 }
}
