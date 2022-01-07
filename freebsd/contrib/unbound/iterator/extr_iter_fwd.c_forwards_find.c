
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct iter_forwards {int tree; } ;
struct TYPE_2__ {struct iter_forward_zone* key; } ;
struct iter_forward_zone {struct delegpt* dp; int namelen; int namelabs; int * name; int dclass; TYPE_1__ node; } ;
struct delegpt {int dummy; } ;
typedef int rbnode_type ;


 int dname_count_size_labels (int *,int *) ;
 int * rbtree_search (int ,struct iter_forward_zone*) ;

struct delegpt*
forwards_find(struct iter_forwards* fwd, uint8_t* qname, uint16_t qclass)
{
 rbnode_type* res = ((void*)0);
 struct iter_forward_zone key;
 key.node.key = &key;
 key.dclass = qclass;
 key.name = qname;
 key.namelabs = dname_count_size_labels(qname, &key.namelen);
 res = rbtree_search(fwd->tree, &key);
 if(res) return ((struct iter_forward_zone*)res)->dp;
 return ((void*)0);
}
