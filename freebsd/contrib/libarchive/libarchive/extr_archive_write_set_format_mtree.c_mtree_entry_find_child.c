
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtree_entry {TYPE_1__* dir_info; } ;
struct TYPE_2__ {int rbtree; } ;


 scalar_t__ __archive_rb_tree_find_node (int *,char const*) ;

__attribute__((used)) static struct mtree_entry *
mtree_entry_find_child(struct mtree_entry *parent, const char *child_name)
{
 struct mtree_entry *np;

 if (parent == ((void*)0))
  return (((void*)0));
 np = (struct mtree_entry *)__archive_rb_tree_find_node(
     &(parent->dir_info->rbtree), child_name);
 return (np);
}
