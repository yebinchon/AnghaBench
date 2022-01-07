
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {struct val_neg_zone* key; } ;
struct val_neg_zone {size_t len; int labs; int tree; int dclass; int name; TYPE_1__ node; } ;


 scalar_t__ calloc (int,int) ;
 int free (struct val_neg_zone*) ;
 int memdup (int *,size_t) ;
 int rbtree_init (int *,int *) ;
 int val_neg_data_compare ;

__attribute__((used)) static struct val_neg_zone* neg_setup_zone_node(
 uint8_t* nm, size_t nm_len, int labs, uint16_t dclass)
{
 struct val_neg_zone* zone =
  (struct val_neg_zone*)calloc(1, sizeof(*zone));
 if(!zone) {
  return ((void*)0);
 }
 zone->node.key = zone;
 zone->name = memdup(nm, nm_len);
 if(!zone->name) {
  free(zone);
  return ((void*)0);
 }
 zone->len = nm_len;
 zone->labs = labs;
 zone->dclass = dclass;

 rbtree_init(&zone->tree, &val_neg_data_compare);
 return zone;
}
