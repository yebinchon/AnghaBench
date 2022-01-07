
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct iter_forwards {int tree; } ;
struct TYPE_2__ {struct iter_forward_zone* key; } ;
struct iter_forward_zone {int namelen; int namelabs; int * name; int dclass; TYPE_1__ node; } ;


 int dname_count_size_labels (int *,int *) ;
 scalar_t__ rbtree_search (int ,struct iter_forward_zone*) ;

__attribute__((used)) static struct iter_forward_zone*
fwd_zone_find(struct iter_forwards* fwd, uint16_t c, uint8_t* nm)
{
 struct iter_forward_zone key;
 key.node.key = &key;
 key.dclass = c;
 key.name = nm;
 key.namelabs = dname_count_size_labels(nm, &key.namelen);
 return (struct iter_forward_zone*)rbtree_search(fwd->tree, &key);
}
