
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct auth_zones {int ztree; } ;
struct TYPE_2__ {struct auth_zone* key; } ;
struct auth_zone {size_t namelen; int namelabs; int * name; int dclass; TYPE_1__ node; } ;


 int dname_count_labels (int *) ;
 scalar_t__ rbtree_search (int *,struct auth_zone*) ;

struct auth_zone*
auth_zone_find(struct auth_zones* az, uint8_t* nm, size_t nmlen,
 uint16_t dclass)
{
 struct auth_zone key;
 key.node.key = &key;
 key.dclass = dclass;
 key.name = nm;
 key.namelen = nmlen;
 key.namelabs = dname_count_labels(nm);
 return (struct auth_zone*)rbtree_search(&az->ztree, &key);
}
