
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct local_zone {int data; } ;
struct TYPE_2__ {struct local_data* key; } ;
struct local_data {size_t namelen; int namelabs; TYPE_1__ node; int * name; } ;


 scalar_t__ rbtree_search (int *,TYPE_1__*) ;

__attribute__((used)) static struct local_data*
lz_find_node(struct local_zone* z, uint8_t* nm, size_t nmlen, int nmlabs)
{
 struct local_data key;
 key.node.key = &key;
 key.name = nm;
 key.namelen = nmlen;
 key.namelabs = nmlabs;
 return (struct local_data*)rbtree_search(&z->data, &key.node);
}
