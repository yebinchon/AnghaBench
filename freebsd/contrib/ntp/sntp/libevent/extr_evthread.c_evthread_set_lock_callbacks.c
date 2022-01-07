
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evthread_lock_callbacks {scalar_t__ alloc; scalar_t__ lock_api_version; scalar_t__ supported_locktypes; scalar_t__ free; scalar_t__ lock; scalar_t__ unlock; } ;
typedef int evthread_lock_fns_ ;


 int event_global_setup_locks_ (int) ;
 int event_warnx (char*) ;
 struct evthread_lock_callbacks* evthread_get_lock_callbacks () ;
 int memcpy (struct evthread_lock_callbacks*,struct evthread_lock_callbacks const*,int) ;
 int memset (struct evthread_lock_callbacks*,int ,int) ;

int
evthread_set_lock_callbacks(const struct evthread_lock_callbacks *cbs)
{
 struct evthread_lock_callbacks *target = evthread_get_lock_callbacks();

 if (!cbs) {
  if (target->alloc)
   event_warnx("Trying to disable lock functions after "
       "they have been set up will probaby not work.");
  memset(target, 0, sizeof(evthread_lock_fns_));
  return 0;
 }
 if (target->alloc) {

  if (target->lock_api_version == cbs->lock_api_version &&
   target->supported_locktypes == cbs->supported_locktypes &&
   target->alloc == cbs->alloc &&
   target->free == cbs->free &&
   target->lock == cbs->lock &&
   target->unlock == cbs->unlock) {

   return 0;
  }
  event_warnx("Can't change lock callbacks once they have been "
      "initialized.");
  return -1;
 }
 if (cbs->alloc && cbs->free && cbs->lock && cbs->unlock) {
  memcpy(target, cbs, sizeof(evthread_lock_fns_));
  return event_global_setup_locks_(1);
 } else {
  return -1;
 }
}
