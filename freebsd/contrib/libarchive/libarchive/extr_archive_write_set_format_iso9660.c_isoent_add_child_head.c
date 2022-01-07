
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cnt; struct isoent* first; struct isoent** last; } ;
struct TYPE_3__ {int cnt; struct isoent* first; struct isoent** last; } ;
struct isoent {struct isoent* drnext; struct isoent* parent; TYPE_2__ subdirs; scalar_t__ dir; TYPE_1__ children; struct isoent* chnext; int rbtree; } ;
struct archive_rb_node {int dummy; } ;


 int __archive_rb_tree_insert_node (int *,struct archive_rb_node*) ;

__attribute__((used)) static int
isoent_add_child_head(struct isoent *parent, struct isoent *child)
{

 if (!__archive_rb_tree_insert_node(
     &(parent->rbtree), (struct archive_rb_node *)child))
  return (0);
 if ((child->chnext = parent->children.first) == ((void*)0))
  parent->children.last = &(child->chnext);
 parent->children.first = child;
 parent->children.cnt++;
 child->parent = parent;


 if (child->dir) {
  if ((child->drnext = parent->subdirs.first) == ((void*)0))
   parent->subdirs.last = &(child->drnext);
  parent->subdirs.first = child;
  parent->subdirs.cnt++;
  child->parent = parent;
 } else
  child->drnext = ((void*)0);
 return (1);
}
