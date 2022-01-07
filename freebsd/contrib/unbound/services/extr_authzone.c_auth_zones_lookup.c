
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct regional {int dummy; } ;
struct query_info {int qclass; } ;
struct dns_msg {int dummy; } ;
struct auth_zones {int lock; } ;
struct auth_zone {int fallback_enabled; int lock; scalar_t__ zone_expired; int for_upstream; } ;


 struct auth_zone* auth_zone_find (struct auth_zones*,int *,size_t,int ) ;
 int auth_zone_generate_answer (struct auth_zone*,struct query_info*,struct regional*,struct dns_msg**,int*) ;
 int lock_rw_rdlock (int *) ;
 int lock_rw_unlock (int *) ;

int auth_zones_lookup(struct auth_zones* az, struct query_info* qinfo,
 struct regional* region, struct dns_msg** msg, int* fallback,
 uint8_t* dp_nm, size_t dp_nmlen)
{
 int r;
 struct auth_zone* z;

 lock_rw_rdlock(&az->lock);
 z = auth_zone_find(az, dp_nm, dp_nmlen, qinfo->qclass);
 if(!z) {
  lock_rw_unlock(&az->lock);

  *fallback = 1;
  return 0;
 }
 lock_rw_rdlock(&z->lock);
 lock_rw_unlock(&az->lock);


 if(!z->for_upstream) {
  lock_rw_unlock(&z->lock);
  *fallback = 1;
  return 0;
 }
 if(z->zone_expired) {
  *fallback = z->fallback_enabled;
  lock_rw_unlock(&z->lock);
  return 0;
 }

 r = auth_zone_generate_answer(z, qinfo, region, msg, fallback);
 lock_rw_unlock(&z->lock);
 return r;
}
