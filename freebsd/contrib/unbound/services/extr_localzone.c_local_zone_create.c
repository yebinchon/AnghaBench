
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct regional {int dummy; } ;
struct TYPE_2__ {struct local_zone* key; } ;
struct local_zone {int type; size_t namelen; int namelabs; int parent; int lock; int data; int region; int * name; int dclass; TYPE_1__ node; } ;
typedef int rbnode_type ;
typedef enum localzone_type { ____Placeholder_localzone_type } localzone_type ;


 scalar_t__ calloc (int,int) ;
 int free (struct local_zone*) ;
 int local_data_cmp ;
 int lock_protect (int *,int *,int) ;
 int lock_rw_init (int *) ;
 int rbtree_init (int *,int *) ;
 int regional_create_custom (int) ;

__attribute__((used)) static struct local_zone*
local_zone_create(uint8_t* nm, size_t len, int labs,
 enum localzone_type t, uint16_t dclass)
{
 struct local_zone* z = (struct local_zone*)calloc(1, sizeof(*z));
 if(!z) {
  return ((void*)0);
 }
 z->node.key = z;
 z->dclass = dclass;
 z->type = t;
 z->name = nm;
 z->namelen = len;
 z->namelabs = labs;
 lock_rw_init(&z->lock);
 z->region = regional_create_custom(sizeof(struct regional));
 if(!z->region) {
  free(z);
  return ((void*)0);
 }
 rbtree_init(&z->data, &local_data_cmp);
 lock_protect(&z->lock, &z->parent, sizeof(*z)-sizeof(rbnode_type));

 return z;
}
