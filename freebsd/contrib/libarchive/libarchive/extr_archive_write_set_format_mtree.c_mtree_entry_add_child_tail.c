
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtree_entry {TYPE_2__* dir_info; } ;
struct TYPE_3__ {struct mtree_entry** last; } ;
struct TYPE_4__ {struct mtree_entry* chnext; TYPE_1__ children; } ;



__attribute__((used)) static int
mtree_entry_add_child_tail(struct mtree_entry *parent,
    struct mtree_entry *child)
{
 child->dir_info->chnext = ((void*)0);
 *parent->dir_info->children.last = child;
 parent->dir_info->children.last = &(child->dir_info->chnext);
 return (1);
}
