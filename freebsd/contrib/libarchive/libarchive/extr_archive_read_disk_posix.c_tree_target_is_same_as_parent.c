
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree_entry {scalar_t__ dev; scalar_t__ ino; struct tree_entry* parent; } ;
struct tree {TYPE_1__* current; } ;
struct stat {scalar_t__ st_ino; scalar_t__ st_dev; } ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {struct tree_entry* parent; } ;



__attribute__((used)) static int
tree_target_is_same_as_parent(struct tree *t, const struct stat *st)
{
 struct tree_entry *te;

 for (te = t->current->parent; te != ((void*)0); te = te->parent) {
  if (te->dev == (int64_t)st->st_dev &&
      te->ino == (int64_t)st->st_ino)
   return (1);
 }
 return (0);
}
