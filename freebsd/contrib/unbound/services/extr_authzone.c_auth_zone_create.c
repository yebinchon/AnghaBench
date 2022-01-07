
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct auth_zones {int ztree; } ;
struct TYPE_2__ {struct auth_zone* key; } ;
struct auth_zone {size_t namelen; int lock; TYPE_1__ node; int name; int data; int namelabs; int dclass; } ;
typedef int rbnode_type ;


 int auth_data_cmp ;
 int auth_zone_delete (struct auth_zone*) ;
 scalar_t__ calloc (int,int) ;
 int dname_count_labels (int *) ;
 int free (struct auth_zone*) ;
 int lock_protect (int *,int *,int) ;
 int lock_rw_init (int *) ;
 int lock_rw_unlock (int *) ;
 int lock_rw_wrlock (int *) ;
 int log_warn (char*) ;
 int memdup (int *,size_t) ;
 int rbtree_init (int *,int *) ;
 int rbtree_insert (int *,TYPE_1__*) ;

struct auth_zone*
auth_zone_create(struct auth_zones* az, uint8_t* nm, size_t nmlen,
 uint16_t dclass)
{
 struct auth_zone* z = (struct auth_zone*)calloc(1, sizeof(*z));
 if(!z) {
  return ((void*)0);
 }
 z->node.key = z;
 z->dclass = dclass;
 z->namelen = nmlen;
 z->namelabs = dname_count_labels(nm);
 z->name = memdup(nm, nmlen);
 if(!z->name) {
  free(z);
  return ((void*)0);
 }
 rbtree_init(&z->data, &auth_data_cmp);
 lock_rw_init(&z->lock);
 lock_protect(&z->lock, &z->name, sizeof(*z)-sizeof(rbnode_type));
 lock_rw_wrlock(&z->lock);

 if(!rbtree_insert(&az->ztree, &z->node)) {
  lock_rw_unlock(&z->lock);
  auth_zone_delete(z);
  log_warn("duplicate auth zone");
  return ((void*)0);
 }
 return z;
}
