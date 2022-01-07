
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cnt; struct isoent** last; } ;
struct TYPE_3__ {int cnt; struct isoent** last; } ;
struct isoent {struct isoent* parent; TYPE_2__ subdirs; struct isoent* drnext; scalar_t__ dir; TYPE_1__ children; struct isoent* chnext; int rbtree; } ;
struct archive_rb_node {int dummy; } ;


 int __archive_rb_tree_insert_node (int *,struct archive_rb_node*) ;

__attribute__((used)) static int
isoent_add_child_tail(struct isoent *parent, struct isoent *child)
{

 if (!__archive_rb_tree_insert_node(
     &(parent->rbtree), (struct archive_rb_node *)child))
  return (0);
 child->chnext = ((void*)0);
 *parent->children.last = child;
 parent->children.last = &(child->chnext);
 parent->children.cnt++;
 child->parent = parent;


 child->drnext = ((void*)0);
 if (child->dir) {
  *parent->subdirs.last = child;
  parent->subdirs.last = &(child->drnext);
  parent->subdirs.cnt++;
  child->parent = parent;
 }
 return (1);
}
