
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct module_env {TYPE_1__* outnet; } ;
struct comm_reply {int * c; } ;
struct comm_point {int tcp_is_reading; int buffer; } ;
struct auth_xfer {int lock; TYPE_3__* task_transfer; } ;
struct TYPE_7__ {int * cp; TYPE_2__* master; int timer; struct module_env* env; } ;
struct TYPE_6__ {int host; } ;
struct TYPE_5__ {scalar_t__ want_to_quit; } ;


 int AUTH_TRANSFER_TIMEOUT ;
 int NETEVENT_DONE ;
 int NETEVENT_NOERROR ;
 int VERB_ALGO ;
 int auth_chunks_delete (TYPE_3__*) ;
 int comm_point_delete (int *) ;
 int comm_point_start_listening (struct comm_point*,int,int ) ;
 int comm_timer_disable (int ) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int log_assert (TYPE_3__*) ;
 int process_list_end_transfer (struct auth_xfer*,struct module_env*) ;
 int sldns_buffer_clear (int ) ;
 scalar_t__ sldns_buffer_limit (int ) ;
 int verbose (int ,char*,...) ;
 int xfer_link_data (int ,struct auth_xfer*) ;
 int xfr_transfer_nextmaster (struct auth_xfer*) ;
 int xfr_transfer_nexttarget_or_end (struct auth_xfer*,struct module_env*) ;

int
auth_xfer_transfer_http_callback(struct comm_point* c, void* arg, int err,
 struct comm_reply* repinfo)
{
 struct auth_xfer* xfr = (struct auth_xfer*)arg;
 struct module_env* env;
 log_assert(xfr->task_transfer);
 lock_basic_lock(&xfr->lock);
 env = xfr->task_transfer->env;
 if(env->outnet->want_to_quit) {
  lock_basic_unlock(&xfr->lock);
  return 0;
 }
 verbose(VERB_ALGO, "auth zone transfer http callback");

 comm_timer_disable(xfr->task_transfer->timer);

 if(err != NETEVENT_NOERROR && err != NETEVENT_DONE) {



  verbose(VERB_ALGO, "http stopped, connection lost to %s",
   xfr->task_transfer->master->host);
 failed:

  auth_chunks_delete(xfr->task_transfer);
  if(repinfo) repinfo->c = ((void*)0);

  comm_point_delete(xfr->task_transfer->cp);
  xfr->task_transfer->cp = ((void*)0);
  xfr_transfer_nextmaster(xfr);
  xfr_transfer_nexttarget_or_end(xfr, env);
  return 0;
 }



 if(sldns_buffer_limit(c->buffer) > 0) {
  verbose(VERB_ALGO, "auth zone http queued up %d bytes",
   (int)sldns_buffer_limit(c->buffer));
  if(!xfer_link_data(c->buffer, xfr)) {
   verbose(VERB_ALGO, "http stopped to %s, malloc failed",
    xfr->task_transfer->master->host);
   goto failed;
  }
 }

 if(err == NETEVENT_DONE) {
  if(repinfo) repinfo->c = ((void*)0);

  comm_point_delete(xfr->task_transfer->cp);
  xfr->task_transfer->cp = ((void*)0);
  process_list_end_transfer(xfr, env);
  return 0;
 }



 lock_basic_unlock(&xfr->lock);
 c->tcp_is_reading = 1;
 sldns_buffer_clear(c->buffer);
 comm_point_start_listening(c, -1, AUTH_TRANSFER_TIMEOUT);
 return 0;
}
