
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {struct auth_zone* key; } ;
struct auth_zone {size_t namelen; int data; int namelabs; int * name; TYPE_1__ node; } ;
struct auth_data {int dummy; } ;


 int dname_count_labels (int *) ;
 scalar_t__ rbtree_search (int *,struct auth_zone*) ;

__attribute__((used)) static struct auth_data*
az_find_name(struct auth_zone* z, uint8_t* nm, size_t nmlen)
{
 struct auth_zone key;
 key.node.key = &key;
 key.name = nm;
 key.namelen = nmlen;
 key.namelabs = dname_count_labels(nm);
 return (struct auth_data*)rbtree_search(&z->data, &key);
}
