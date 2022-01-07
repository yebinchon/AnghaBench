
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct local_zones {int ztree; } ;
struct TYPE_2__ {struct local_zone* key; } ;
struct local_zone {size_t namelen; int namelabs; int * name; int dclass; TYPE_1__ node; } ;


 scalar_t__ rbtree_search (int *,struct local_zone*) ;

struct local_zone*
local_zones_find(struct local_zones* zones,
        uint8_t* name, size_t len, int labs, uint16_t dclass)
{
 struct local_zone key;
 key.node.key = &key;
 key.dclass = dclass;
 key.name = name;
 key.namelen = len;
 key.namelabs = labs;

 return (struct local_zone*)rbtree_search(&zones->ztree, &key);
}
