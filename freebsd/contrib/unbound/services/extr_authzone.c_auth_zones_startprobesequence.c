
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct module_env {int dummy; } ;
struct auth_zones {int lock; } ;
struct auth_xfer {int lock; } ;


 struct auth_xfer* auth_xfer_find (struct auth_zones*,int *,size_t,int ) ;
 int lock_basic_lock (int *) ;
 int lock_rw_rdlock (int *) ;
 int lock_rw_unlock (int *) ;
 int xfr_process_notify (struct auth_xfer*,struct module_env*,int ,int ,int *) ;

int auth_zones_startprobesequence(struct auth_zones* az,
 struct module_env* env, uint8_t* nm, size_t nmlen, uint16_t dclass)
{
 struct auth_xfer* xfr;
 lock_rw_rdlock(&az->lock);
 xfr = auth_xfer_find(az, nm, nmlen, dclass);
 if(!xfr) {
  lock_rw_unlock(&az->lock);
  return 0;
 }
 lock_basic_lock(&xfr->lock);
 lock_rw_unlock(&az->lock);

 xfr_process_notify(xfr, env, 0, 0, ((void*)0));
 return 1;
}
