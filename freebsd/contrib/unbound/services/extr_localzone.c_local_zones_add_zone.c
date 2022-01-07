
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct local_zones {int ztree; } ;
struct local_zone {int lock; int parent; int node; } ;
typedef enum localzone_type { ____Placeholder_localzone_type } localzone_type ;


 int free (int *) ;
 struct local_zone* local_zone_create (int *,size_t,int,int,int ) ;
 int local_zone_delete (struct local_zone*) ;
 int local_zones_find (struct local_zones*,int *,size_t,int,int ) ;
 int lock_rw_unlock (int *) ;
 int lock_rw_wrlock (int *) ;
 int log_err (char*) ;
 int rbtree_insert (int *,int *) ;
 int set_kiddo_parents (struct local_zone*,int ,struct local_zone*) ;

struct local_zone* local_zones_add_zone(struct local_zones* zones,
 uint8_t* name, size_t len, int labs, uint16_t dclass,
 enum localzone_type tp)
{

 struct local_zone* z = local_zone_create(name, len, labs, tp, dclass);
 if(!z) {
  free(name);
  return ((void*)0);
 }
 lock_rw_wrlock(&z->lock);


 z->parent = local_zones_find(zones, name, len, labs, dclass);


 if(!rbtree_insert(&zones->ztree, &z->node)) {

  lock_rw_unlock(&z->lock);
  local_zone_delete(z);
  log_err("internal: duplicate entry in local_zones_add_zone");
  return ((void*)0);
 }


 set_kiddo_parents(z, z->parent, z);

 lock_rw_unlock(&z->lock);
 return z;
}
