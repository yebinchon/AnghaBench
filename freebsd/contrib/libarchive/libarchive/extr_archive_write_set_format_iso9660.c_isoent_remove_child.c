
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cnt; struct isoent** last; struct isoent* first; } ;
struct TYPE_3__ {int cnt; struct isoent** last; struct isoent* first; } ;
struct isoent {int rbtree; TYPE_2__ subdirs; struct isoent* drnext; scalar_t__ dir; TYPE_1__ children; struct isoent* chnext; } ;
struct archive_rb_node {int dummy; } ;


 int __archive_rb_tree_remove_node (int *,struct archive_rb_node*) ;

__attribute__((used)) static void
isoent_remove_child(struct isoent *parent, struct isoent *child)
{
 struct isoent *ent;


 ent = parent->children.first;
 while (ent->chnext != child)
  ent = ent->chnext;
 if ((ent->chnext = ent->chnext->chnext) == ((void*)0))
  parent->children.last = &(ent->chnext);
 parent->children.cnt--;

 if (child->dir) {

  ent = parent->subdirs.first;
  while (ent->drnext != child)
   ent = ent->drnext;
  if ((ent->drnext = ent->drnext->drnext) == ((void*)0))
   parent->subdirs.last = &(ent->drnext);
  parent->subdirs.cnt--;
 }

 __archive_rb_tree_remove_node(&(parent->rbtree),
     (struct archive_rb_node *)child);
}
