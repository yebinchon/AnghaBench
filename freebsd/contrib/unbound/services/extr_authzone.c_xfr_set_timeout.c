
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct module_env {scalar_t__* now; int * worker; int worker_base; } ;
struct auth_xfer {scalar_t__ lease_time; scalar_t__ refresh; scalar_t__ retry; scalar_t__ expiry; TYPE_2__* task_nextprobe; int name; TYPE_1__* task_probe; scalar_t__ have_zone; } ;
struct TYPE_4__ {scalar_t__ next_probe; int backoff; scalar_t__ timer; struct module_env* env; int * worker; } ;
struct TYPE_3__ {int only_lookup; int * worker; scalar_t__ masters; } ;


 int AUTH_TRANSFER_MAX_BACKOFF ;
 scalar_t__ VERB_ALGO ;
 int auth_xfer_timer ;
 scalar_t__ comm_timer_create (int ,int ,struct auth_xfer*) ;
 int comm_timer_set (scalar_t__,struct timeval*) ;
 int dname_str (int ,char*) ;
 int log_assert (int) ;
 int log_err (char*,char*) ;
 int verbose (scalar_t__,char*,char*,int) ;
 scalar_t__ verbosity ;

__attribute__((used)) static void
xfr_set_timeout(struct auth_xfer* xfr, struct module_env* env,
 int failure, int lookup_only)
{
 struct timeval tv;
 log_assert(xfr->task_nextprobe != ((void*)0));
 log_assert(xfr->task_nextprobe->worker == ((void*)0) ||
  xfr->task_nextprobe->worker == env->worker);



 xfr->task_nextprobe->next_probe = *env->now;
 if(xfr->lease_time && !failure)
  xfr->task_nextprobe->next_probe = xfr->lease_time;

 if(!failure) {
  xfr->task_nextprobe->backoff = 0;
 } else {
  if(xfr->task_nextprobe->backoff == 0)
    xfr->task_nextprobe->backoff = 3;
  else xfr->task_nextprobe->backoff *= 2;
  if(xfr->task_nextprobe->backoff > AUTH_TRANSFER_MAX_BACKOFF)
   xfr->task_nextprobe->backoff =
    AUTH_TRANSFER_MAX_BACKOFF;
 }

 if(xfr->have_zone) {
  time_t wait = xfr->refresh;
  if(failure) wait = xfr->retry;
  if(xfr->expiry < wait)
   xfr->task_nextprobe->next_probe += xfr->expiry;
  else xfr->task_nextprobe->next_probe += wait;
  if(failure)
   xfr->task_nextprobe->next_probe +=
    xfr->task_nextprobe->backoff;

  if(xfr->lease_time && xfr->lease_time+xfr->expiry <
   xfr->task_nextprobe->next_probe &&
   xfr->lease_time+xfr->expiry > *env->now)
   xfr->task_nextprobe->next_probe =
    xfr->lease_time+xfr->expiry;
 } else {
  xfr->task_nextprobe->next_probe +=
   xfr->task_nextprobe->backoff;
 }

 if(!xfr->task_nextprobe->timer) {
  xfr->task_nextprobe->timer = comm_timer_create(
   env->worker_base, auth_xfer_timer, xfr);
  if(!xfr->task_nextprobe->timer) {


   char zname[255+1];
   dname_str(xfr->name, zname);
   log_err("cannot allocate timer, no refresh for %s",
    zname);
   return;
  }
 }
 xfr->task_nextprobe->worker = env->worker;
 xfr->task_nextprobe->env = env;
 if(*(xfr->task_nextprobe->env->now) <= xfr->task_nextprobe->next_probe)
  tv.tv_sec = xfr->task_nextprobe->next_probe -
   *(xfr->task_nextprobe->env->now);
 else tv.tv_sec = 0;
 if(tv.tv_sec != 0 && lookup_only && xfr->task_probe->masters) {


  tv.tv_sec = 0;
  if(xfr->task_probe && xfr->task_probe->worker == ((void*)0))
   xfr->task_probe->only_lookup = 1;
 }
 if(verbosity >= VERB_ALGO) {
  char zname[255+1];
  dname_str(xfr->name, zname);
  verbose(VERB_ALGO, "auth zone %s timeout in %d seconds",
   zname, (int)tv.tv_sec);
 }
 tv.tv_usec = 0;
 comm_timer_set(xfr->task_nextprobe->timer, &tv);
}
