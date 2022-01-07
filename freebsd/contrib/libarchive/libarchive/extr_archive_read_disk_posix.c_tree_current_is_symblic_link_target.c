
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree {TYPE_1__* current_filesystem; } ;
struct stat {scalar_t__ st_dev; } ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {scalar_t__ dev; } ;


 struct stat* tree_current_lstat (struct tree*) ;
 struct stat* tree_current_stat (struct tree*) ;

__attribute__((used)) static int
tree_current_is_symblic_link_target(struct tree *t)
{
 static const struct stat *lst, *st;

 lst = tree_current_lstat(t);
 st = tree_current_stat(t);
 return (st != ((void*)0) && lst != ((void*)0) &&
     (int64_t)st->st_dev == t->current_filesystem->dev &&
     st->st_dev != lst->st_dev);
}
