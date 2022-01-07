
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct local_zones {int lock; } ;
struct local_zone {int lock; } ;


 int dname_count_size_labels (int *,size_t*) ;
 int free (int *) ;
 int get_rr_nameclass (char const*,int **,int *,int *) ;
 int local_zone_transparent ;
 struct local_zone* local_zones_add_zone (struct local_zones*,int *,size_t,int,int ,int ) ;
 struct local_zone* local_zones_lookup (struct local_zones*,int *,size_t,int,int ,int ) ;
 int lock_rw_unlock (int *) ;
 int lock_rw_wrlock (int *) ;
 int lz_enter_rr_into_zone (struct local_zone*,char const*) ;

int
local_zones_add_RR(struct local_zones* zones, const char* rr)
{
 uint8_t* rr_name;
 uint16_t rr_class, rr_type;
 size_t len;
 int labs;
 struct local_zone* z;
 int r;
 if(!get_rr_nameclass(rr, &rr_name, &rr_class, &rr_type)) {
  return 0;
 }
 labs = dname_count_size_labels(rr_name, &len);


 lock_rw_wrlock(&zones->lock);
 z = local_zones_lookup(zones, rr_name, len, labs, rr_class, rr_type);
 if(!z) {
  z = local_zones_add_zone(zones, rr_name, len, labs, rr_class,
   local_zone_transparent);
  if(!z) {
   lock_rw_unlock(&zones->lock);
   return 0;
  }
 } else {
  free(rr_name);
 }
 lock_rw_wrlock(&z->lock);
 lock_rw_unlock(&zones->lock);
 r = lz_enter_rr_into_zone(z, rr);
 lock_rw_unlock(&z->lock);
 return r;
}
