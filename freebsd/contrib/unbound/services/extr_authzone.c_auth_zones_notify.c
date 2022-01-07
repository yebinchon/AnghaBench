
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct sockaddr_storage {int dummy; } ;
struct module_env {int dummy; } ;
struct auth_zones {int lock; } ;
struct auth_xfer {int lock; } ;
struct auth_master {int dummy; } ;
typedef int socklen_t ;


 struct auth_xfer* auth_xfer_find (struct auth_zones*,int *,size_t,int ) ;
 int az_xfr_allowed_notify (struct auth_xfer*,struct sockaddr_storage*,int ,struct auth_master**) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int lock_rw_rdlock (int *) ;
 int lock_rw_unlock (int *) ;
 int xfr_process_notify (struct auth_xfer*,struct module_env*,int,int ,struct auth_master*) ;

int auth_zones_notify(struct auth_zones* az, struct module_env* env,
 uint8_t* nm, size_t nmlen, uint16_t dclass,
 struct sockaddr_storage* addr, socklen_t addrlen, int has_serial,
 uint32_t serial, int* refused)
{
 struct auth_xfer* xfr;
 struct auth_master* fromhost = ((void*)0);

 lock_rw_rdlock(&az->lock);
 xfr = auth_xfer_find(az, nm, nmlen, dclass);
 if(!xfr) {
  lock_rw_unlock(&az->lock);

  *refused = 1;
  return 0;
 }
 lock_basic_lock(&xfr->lock);
 lock_rw_unlock(&az->lock);


 if(!az_xfr_allowed_notify(xfr, addr, addrlen, &fromhost)) {
  lock_basic_unlock(&xfr->lock);

  *refused = 1;
  return 0;
 }


 xfr_process_notify(xfr, env, has_serial, serial, fromhost);
 return 1;
}
