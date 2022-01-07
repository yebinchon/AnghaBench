
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module_env {TYPE_1__* auth_zones; } ;
struct auth_zone {int zone_expired; int lock; } ;
struct auth_xfer {int zone_expired; int dclass; int namelen; int name; int lock; } ;
struct TYPE_2__ {int lock; } ;


 struct auth_zone* auth_zone_find (TYPE_1__*,int ,int ,int ) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int lock_rw_rdlock (int *) ;
 int lock_rw_unlock (int *) ;
 int lock_rw_wrlock (int *) ;

__attribute__((used)) static void
auth_xfer_set_expired(struct auth_xfer* xfr, struct module_env* env,
 int expired)
{
 struct auth_zone* z;


 lock_basic_lock(&xfr->lock);
 xfr->zone_expired = expired;
 lock_basic_unlock(&xfr->lock);


 lock_rw_rdlock(&env->auth_zones->lock);
 z = auth_zone_find(env->auth_zones, xfr->name, xfr->namelen,
  xfr->dclass);
 if(!z) {
  lock_rw_unlock(&env->auth_zones->lock);
  return;
 }
 lock_rw_wrlock(&z->lock);
 lock_rw_unlock(&env->auth_zones->lock);


 z->zone_expired = expired;
 lock_rw_unlock(&z->lock);
}
