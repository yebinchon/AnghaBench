
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct module_env {TYPE_1__* outnet; } ;
struct comm_reply {int * c; } ;
struct comm_point {int buffer; } ;
struct auth_xfer {TYPE_4__* task_probe; int name; int lock; TYPE_3__* task_transfer; } ;
struct auth_master {int dummy; } ;
struct TYPE_8__ {int have_new_lease; int * cp; int timer; struct module_env* env; } ;
struct TYPE_7__ {TYPE_2__* masters; int * worker; } ;
struct TYPE_6__ {scalar_t__ http; } ;
struct TYPE_5__ {scalar_t__ want_to_quit; } ;


 int LDNS_RR_TYPE_SOA ;
 int NETEVENT_NOERROR ;
 scalar_t__ VERB_ALGO ;
 scalar_t__ check_packet_ok (int ,int ,struct auth_xfer*,scalar_t__*) ;
 int comm_point_delete (int *) ;
 int comm_timer_disable (int ) ;
 int dname_str (int ,char*) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int log_assert (TYPE_4__*) ;
 int verbose (scalar_t__,char*,...) ;
 scalar_t__ verbosity ;
 struct auth_master* xfr_probe_current_master (struct auth_xfer*) ;
 int xfr_probe_disown (struct auth_xfer*) ;
 int xfr_probe_nextmaster (struct auth_xfer*) ;
 int xfr_probe_send_or_end (struct auth_xfer*,struct module_env*) ;
 scalar_t__ xfr_serial_means_update (struct auth_xfer*,scalar_t__) ;
 int xfr_start_transfer (struct auth_xfer*,struct module_env*,struct auth_master*) ;

int
auth_xfer_probe_udp_callback(struct comm_point* c, void* arg, int err,
 struct comm_reply* repinfo)
{
 struct auth_xfer* xfr = (struct auth_xfer*)arg;
 struct module_env* env;
 log_assert(xfr->task_probe);
 lock_basic_lock(&xfr->lock);
 env = xfr->task_probe->env;
 if(env->outnet->want_to_quit) {
  lock_basic_unlock(&xfr->lock);
  return 0;
 }



 repinfo->c = ((void*)0);

 comm_timer_disable(xfr->task_probe->timer);


 if(err == NETEVENT_NOERROR) {
  uint32_t serial = 0;
  if(check_packet_ok(c->buffer, LDNS_RR_TYPE_SOA, xfr,
   &serial)) {

   if(verbosity >= VERB_ALGO) {
    char buf[256];
    dname_str(xfr->name, buf);
    verbose(VERB_ALGO, "auth zone %s: soa probe "
     "serial is %u", buf, (unsigned)serial);
   }


   if(xfr_serial_means_update(xfr, serial)) {

    verbose(VERB_ALGO, "auth_zone updated, start transfer");
    if(xfr->task_transfer->worker == ((void*)0)) {
     struct auth_master* master =
      xfr_probe_current_master(xfr);



     if(xfr->task_transfer->masters &&
      xfr->task_transfer->masters->http)
      master = ((void*)0);
     xfr_probe_disown(xfr);
     xfr_start_transfer(xfr, env, master);
     return 0;

    }

    xfr_probe_disown(xfr);
    lock_basic_unlock(&xfr->lock);


    return 0;
   } else {
    verbose(VERB_ALGO, "auth_zone master reports unchanged soa serial");



    xfr->task_probe->have_new_lease = 1;
   }
  } else {
   if(verbosity >= VERB_ALGO) {
    char buf[256];
    dname_str(xfr->name, buf);
    verbose(VERB_ALGO, "auth zone %s: bad reply to soa probe", buf);
   }
  }
 } else {
  if(verbosity >= VERB_ALGO) {
   char buf[256];
   dname_str(xfr->name, buf);
   verbose(VERB_ALGO, "auth zone %s: soa probe failed", buf);
  }
 }



 comm_point_delete(xfr->task_probe->cp);
 xfr->task_probe->cp = ((void*)0);



 xfr_probe_nextmaster(xfr);
 xfr_probe_send_or_end(xfr, env);
 return 0;
}
