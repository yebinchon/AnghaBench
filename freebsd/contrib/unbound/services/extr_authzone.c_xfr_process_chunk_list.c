
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct module_env {int * now; int scratch_buffer; TYPE_3__* auth_zones; } ;
struct auth_zone {int lock; scalar_t__ zone_expired; } ;
struct auth_xfer {scalar_t__ serial; int name; scalar_t__ have_zone; int lease_time; TYPE_2__* task_transfer; scalar_t__ zone_expired; int lock; int dclass; int namelen; } ;
struct TYPE_6__ {int lock; } ;
struct TYPE_5__ {TYPE_1__* master; int on_ixfr_is_axfr; scalar_t__ on_ixfr; } ;
struct TYPE_4__ {int host; scalar_t__ http; } ;


 int VERB_ALGO ;
 scalar_t__ VERB_QUERY ;
 int apply_axfr (struct auth_xfer*,struct auth_zone*,int ) ;
 int apply_http (struct auth_xfer*,struct auth_zone*,int ) ;
 int apply_ixfr (struct auth_xfer*,struct auth_zone*,int ) ;
 struct auth_zone* auth_zone_find (TYPE_3__*,int ,int ,int ) ;
 int dname_str (int ,char*) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int lock_rw_rdlock (int *) ;
 int lock_rw_unlock (int *) ;
 int lock_rw_wrlock (int *) ;
 int verbose (scalar_t__,char*,char*,...) ;
 scalar_t__ verbosity ;
 int xfr_find_soa (struct auth_zone*,struct auth_xfer*) ;
 int xfr_write_after_update (struct auth_xfer*,struct module_env*) ;

__attribute__((used)) static int
xfr_process_chunk_list(struct auth_xfer* xfr, struct module_env* env,
 int* ixfr_fail)
{
 struct auth_zone* z;




 lock_basic_unlock(&xfr->lock);
 lock_rw_rdlock(&env->auth_zones->lock);
 z = auth_zone_find(env->auth_zones, xfr->name, xfr->namelen,
  xfr->dclass);
 if(!z) {
  lock_rw_unlock(&env->auth_zones->lock);

  lock_basic_lock(&xfr->lock);
  return 0;
 }
 lock_rw_wrlock(&z->lock);
 lock_basic_lock(&xfr->lock);
 lock_rw_unlock(&env->auth_zones->lock);


 if(xfr->task_transfer->master->http) {
  if(!apply_http(xfr, z, env->scratch_buffer)) {
   lock_rw_unlock(&z->lock);
   verbose(VERB_ALGO, "http from %s: could not store data",
    xfr->task_transfer->master->host);
   return 0;
  }
 } else if(xfr->task_transfer->on_ixfr &&
  !xfr->task_transfer->on_ixfr_is_axfr) {
  if(!apply_ixfr(xfr, z, env->scratch_buffer)) {
   lock_rw_unlock(&z->lock);
   verbose(VERB_ALGO, "xfr from %s: could not store IXFR"
    " data", xfr->task_transfer->master->host);
   *ixfr_fail = 1;
   return 0;
  }
 } else {
  if(!apply_axfr(xfr, z, env->scratch_buffer)) {
   lock_rw_unlock(&z->lock);
   verbose(VERB_ALGO, "xfr from %s: could not store AXFR"
    " data", xfr->task_transfer->master->host);
   return 0;
  }
 }
 xfr->zone_expired = 0;
 z->zone_expired = 0;
 if(!xfr_find_soa(z, xfr)) {
  lock_rw_unlock(&z->lock);
  verbose(VERB_ALGO, "xfr from %s: no SOA in zone after update"
   " (or malformed RR)", xfr->task_transfer->master->host);
  return 0;
 }
 if(xfr->have_zone)
  xfr->lease_time = *env->now;


 lock_rw_unlock(&z->lock);

 if(verbosity >= VERB_QUERY && xfr->have_zone) {
  char zname[256];
  dname_str(xfr->name, zname);
  verbose(VERB_QUERY, "auth zone %s updated to serial %u", zname,
   (unsigned)xfr->serial);
 }

 xfr_write_after_update(xfr, env);
 return 1;
}
