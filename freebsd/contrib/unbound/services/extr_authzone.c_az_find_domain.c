
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct query_info {int qname_len; int qname; } ;
struct TYPE_2__ {struct auth_zone* key; } ;
struct auth_zone {int data; int name; int namelabs; int namelen; TYPE_1__ node; } ;
struct auth_data {int dummy; } ;
typedef int rbnode_type ;


 int dname_count_labels (int ) ;
 int rbtree_find_less_equal (int *,struct auth_zone*,int **) ;

__attribute__((used)) static void
az_find_domain(struct auth_zone* z, struct query_info* qinfo, int* node_exact,
 struct auth_data** node)
{
 struct auth_zone key;
 key.node.key = &key;
 key.name = qinfo->qname;
 key.namelen = qinfo->qname_len;
 key.namelabs = dname_count_labels(key.name);
 *node_exact = rbtree_find_less_equal(&z->data, &key,
  (rbnode_type**)node);
}
