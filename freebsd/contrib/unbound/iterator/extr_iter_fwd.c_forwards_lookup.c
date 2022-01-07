
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct iter_forwards {int tree; } ;
struct TYPE_2__ {struct iter_forward_zone* key; } ;
struct iter_forward_zone {scalar_t__ dclass; int namelabs; struct delegpt* dp; struct iter_forward_zone* parent; int * name; int namelen; TYPE_1__ node; } ;
struct delegpt {int dummy; } ;
typedef int rbnode_type ;


 int dname_count_size_labels (int *,int *) ;
 int dname_lab_cmp (int *,int,int *,int,int*) ;
 scalar_t__ rbtree_find_less_equal (int ,struct iter_forward_zone*,int **) ;

struct delegpt*
forwards_lookup(struct iter_forwards* fwd, uint8_t* qname, uint16_t qclass)
{

 rbnode_type* res = ((void*)0);
 struct iter_forward_zone *result;
 struct iter_forward_zone key;
 key.node.key = &key;
 key.dclass = qclass;
 key.name = qname;
 key.namelabs = dname_count_size_labels(qname, &key.namelen);
 if(rbtree_find_less_equal(fwd->tree, &key, &res)) {

  result = (struct iter_forward_zone*)res;
 } else {

  int m;
  result = (struct iter_forward_zone*)res;
  if(!result || result->dclass != qclass)
   return ((void*)0);

  (void)dname_lab_cmp(result->name, result->namelabs, key.name,
   key.namelabs, &m);
  while(result) {
   if(result->namelabs <= m)
    break;
   result = result->parent;
  }
 }
 if(result)
  return result->dp;
 return ((void*)0);
}
