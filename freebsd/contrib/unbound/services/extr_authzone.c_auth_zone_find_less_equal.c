
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
typedef int rbnode_type ;


 int dname_count_labels (int *) ;
 int rbtree_find_less_equal (int *,struct auth_zone*,int **) ;

__attribute__((used)) static int
auth_zone_find_less_equal(struct auth_zones* az, uint8_t* nm, size_t nmlen,
 uint16_t dclass, struct auth_zone** z)
{
 struct auth_zone key;
 key.node.key = &key;
 key.dclass = dclass;
 key.name = nm;
 key.namelen = nmlen;
 key.namelabs = dname_count_labels(nm);
 return rbtree_find_less_equal(&az->ztree, &key, (rbnode_type**)z);
}
