
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int qclass; } ;
struct module_qstate {int region; scalar_t__ blacklist; TYPE_3__* env; TYPE_2__ qinfo; } ;
struct TYPE_5__ {size_t qname_len; int * qname; } ;
struct iter_qstate {struct delegpt* dp; TYPE_1__ qchase; scalar_t__ auth_zone_avoid; } ;
struct delegpt {int auth_dp; int namelabs; int namelen; int name; } ;
struct auth_zone {int lock; int namelabs; int namelen; scalar_t__ fallback_enabled; int name; scalar_t__ for_upstream; } ;
struct TYPE_8__ {int lock; } ;
struct TYPE_7__ {TYPE_4__* auth_zones; } ;


 scalar_t__ VERB_ALGO ;
 struct auth_zone* auth_zones_find_zone (TYPE_4__*,int *,size_t,int ) ;
 int dname_str (int ,char*) ;
 scalar_t__ dname_subdomain_c (int ,int ) ;
 int errinf (struct module_qstate*,char*) ;
 int lock_rw_rdlock (int *) ;
 int lock_rw_unlock (int *) ;
 int log_err (char*) ;
 scalar_t__ query_dname_compare (int ,int ) ;
 int regional_alloc_init (int ,int ,int ) ;
 scalar_t__ regional_alloc_zero (int ,int) ;
 int verbose (scalar_t__,char*,char*) ;
 scalar_t__ verbosity ;

__attribute__((used)) static int
auth_zone_delegpt(struct module_qstate* qstate, struct iter_qstate* iq,
 uint8_t* delname, size_t delnamelen)
{
 struct auth_zone* z;
 if(iq->auth_zone_avoid)
  return 1;
 if(!delname) {
  delname = iq->qchase.qname;
  delnamelen = iq->qchase.qname_len;
 }
 lock_rw_rdlock(&qstate->env->auth_zones->lock);
 z = auth_zones_find_zone(qstate->env->auth_zones, delname, delnamelen,
  qstate->qinfo.qclass);
 if(!z) {
  lock_rw_unlock(&qstate->env->auth_zones->lock);
  return 1;
 }
 lock_rw_rdlock(&z->lock);
 lock_rw_unlock(&qstate->env->auth_zones->lock);
 if(z->for_upstream) {
  if(iq->dp && query_dname_compare(z->name, iq->dp->name) == 0
   && iq->dp->auth_dp && qstate->blacklist &&
   z->fallback_enabled) {


   if(verbosity>=VERB_ALGO) {
    char buf[255+1];
    dname_str(z->name, buf);
    verbose(VERB_ALGO, "auth_zone %s "
      "fallback because cache blacklisted",
      buf);
   }
   lock_rw_unlock(&z->lock);
   iq->dp = ((void*)0);
   return 1;
  }
  if(iq->dp==((void*)0) || dname_subdomain_c(z->name, iq->dp->name)) {
   struct delegpt* dp;
   if(qstate->blacklist && z->fallback_enabled) {



    if(verbosity>=VERB_ALGO) {
     char buf[255+1];
     dname_str(z->name, buf);
     verbose(VERB_ALGO, "auth_zone %s "
       "fallback because cache blacklisted",
       buf);
    }
    lock_rw_unlock(&z->lock);
    return 1;
   }
   dp = (struct delegpt*)regional_alloc_zero(
    qstate->region, sizeof(*dp));
   if(!dp) {
    log_err("alloc failure");
    if(z->fallback_enabled) {
     lock_rw_unlock(&z->lock);
     return 1;
    }
    lock_rw_unlock(&z->lock);
    errinf(qstate, "malloc failure");
    return 0;
   }
   dp->name = regional_alloc_init(qstate->region,
    z->name, z->namelen);
   if(!dp->name) {
    log_err("alloc failure");
    if(z->fallback_enabled) {
     lock_rw_unlock(&z->lock);
     return 1;
    }
    lock_rw_unlock(&z->lock);
    errinf(qstate, "malloc failure");
    return 0;
   }
   dp->namelen = z->namelen;
   dp->namelabs = z->namelabs;
   dp->auth_dp = 1;
   iq->dp = dp;
  }
 }

 lock_rw_unlock(&z->lock);
 return 1;
}
