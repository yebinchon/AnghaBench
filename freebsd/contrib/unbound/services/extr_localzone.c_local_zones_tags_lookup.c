
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct local_zones {int ztree; } ;
struct TYPE_2__ {struct local_zone* key; } ;
struct local_zone {scalar_t__ dclass; size_t namelen; int namelabs; struct local_zone* parent; int taglen; int taglist; int * name; TYPE_1__ node; } ;
typedef int rbnode_type ;


 scalar_t__ LDNS_RR_TYPE_DS ;
 int dname_is_root (int *) ;
 int dname_lab_cmp (int *,int,int *,int,int*) ;
 int dname_remove_label (int **,size_t*) ;
 int rbtree_find_less_equal (int *,struct local_zone*,int **) ;
 scalar_t__ taglist_intersect (int ,int ,int *,size_t) ;

struct local_zone*
local_zones_tags_lookup(struct local_zones* zones,
        uint8_t* name, size_t len, int labs, uint16_t dclass, uint16_t dtype,
 uint8_t* taglist, size_t taglen, int ignoretags)
{
 rbnode_type* res = ((void*)0);
 struct local_zone *result;
 struct local_zone key;
 int m;

 if(dtype == LDNS_RR_TYPE_DS && !dname_is_root(name)) {
  dname_remove_label(&name, &len);
  labs--;
 }
 key.node.key = &key;
 key.dclass = dclass;
 key.name = name;
 key.namelen = len;
 key.namelabs = labs;
 rbtree_find_less_equal(&zones->ztree, &key, &res);
 result = (struct local_zone*)res;

 if(!result || result->dclass != dclass)
  return ((void*)0);

 (void)dname_lab_cmp(result->name, result->namelabs, key.name,
  key.namelabs, &m);
 while(result) {
  if(result->namelabs <= m)
   if(ignoretags || !result->taglist ||
    taglist_intersect(result->taglist,
    result->taglen, taglist, taglen))
    break;
  result = result->parent;
 }
 return result;
}
