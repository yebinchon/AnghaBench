
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct local_zones {int lock; int ztree; } ;
struct local_zone {int lock; int node; } ;
typedef enum localzone_type { ____Placeholder_localzone_type } localzone_type ;


 int dname_str (int *,char*) ;
 int free (int *) ;
 struct local_zone* local_zone_create (int *,size_t,int,int,int ) ;
 int local_zone_delete (struct local_zone*) ;
 struct local_zone* local_zones_find (struct local_zones*,int *,size_t,int,int ) ;
 int lock_rw_unlock (int *) ;
 int lock_rw_wrlock (int *) ;
 int log_err (char*) ;
 int log_warn (char*,char*) ;
 int rbtree_insert (int *,int *) ;

__attribute__((used)) static struct local_zone*
lz_enter_zone_dname(struct local_zones* zones, uint8_t* nm, size_t len,
 int labs, enum localzone_type t, uint16_t c)
{
 struct local_zone* z = local_zone_create(nm, len, labs, t, c);
 if(!z) {
  free(nm);
  log_err("out of memory");
  return ((void*)0);
 }


 lock_rw_wrlock(&zones->lock);
 lock_rw_wrlock(&z->lock);
 if(!rbtree_insert(&zones->ztree, &z->node)) {
  struct local_zone* oldz;
  char str[256];
  dname_str(nm, str);
  log_warn("duplicate local-zone %s", str);
  lock_rw_unlock(&z->lock);


  oldz = z;

  z = local_zones_find(zones, nm, len, labs, c);
  lock_rw_wrlock(&z->lock);
  lock_rw_unlock(&zones->lock);
  local_zone_delete(oldz);
  return z;
 }
 lock_rw_unlock(&zones->lock);
 return z;
}
