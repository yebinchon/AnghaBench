
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct auth_zones {int lock; } ;
struct auth_zone {int lock; int for_upstream; scalar_t__ fallback_enabled; } ;


 struct auth_zone* auth_zone_find (struct auth_zones*,int *,size_t,int ) ;
 int lock_rw_rdlock (int *) ;
 int lock_rw_unlock (int *) ;

int auth_zones_can_fallback(struct auth_zones* az, uint8_t* nm, size_t nmlen,
 uint16_t dclass)
{
 int r;
 struct auth_zone* z;
 lock_rw_rdlock(&az->lock);
 z = auth_zone_find(az, nm, nmlen, dclass);
 if(!z) {
  lock_rw_unlock(&az->lock);

  return 1;
 }
 lock_rw_rdlock(&z->lock);
 lock_rw_unlock(&az->lock);
 r = z->fallback_enabled || (!z->for_upstream);
 lock_rw_unlock(&z->lock);
 return r;
}
