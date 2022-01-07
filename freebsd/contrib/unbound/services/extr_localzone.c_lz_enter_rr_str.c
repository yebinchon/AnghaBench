
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct local_zones {int lock; } ;
struct local_zone {int lock; } ;


 int dname_count_size_labels (int *,size_t*) ;
 int fatal_exit (char*,char const*) ;
 int free (int *) ;
 int get_rr_nameclass (char const*,int **,int *,int *) ;
 struct local_zone* local_zones_lookup (struct local_zones*,int *,size_t,int,int ,int ) ;
 int lock_rw_rdlock (int *) ;
 int lock_rw_unlock (int *) ;
 int lock_rw_wrlock (int *) ;
 int log_err (char*,char const*) ;
 int lz_enter_rr_into_zone (struct local_zone*,char const*) ;

__attribute__((used)) static int
lz_enter_rr_str(struct local_zones* zones, const char* rr)
{
 uint8_t* rr_name;
 uint16_t rr_class, rr_type;
 size_t len;
 int labs;
 struct local_zone* z;
 int r;
 if(!get_rr_nameclass(rr, &rr_name, &rr_class, &rr_type)) {
  log_err("bad rr %s", rr);
  return 0;
 }
 labs = dname_count_size_labels(rr_name, &len);
 lock_rw_rdlock(&zones->lock);
 z = local_zones_lookup(zones, rr_name, len, labs, rr_class, rr_type);
 if(!z) {
  lock_rw_unlock(&zones->lock);
  fatal_exit("internal error: no zone for rr %s", rr);
 }
 lock_rw_wrlock(&z->lock);
 lock_rw_unlock(&zones->lock);
 free(rr_name);
 r = lz_enter_rr_into_zone(z, rr);
 lock_rw_unlock(&z->lock);
 return r;
}
