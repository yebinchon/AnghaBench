
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct tree {int flags; struct stat const st; } ;


 scalar_t__ fstatat (int ,int ,struct stat const*,int ) ;
 int hasStat ;
 scalar_t__ la_stat (int ,struct stat const*) ;
 int tree_current_access_path (struct tree*) ;
 int tree_current_dir_fd (struct tree*) ;
 scalar_t__ tree_enter_working_dir (struct tree*) ;

__attribute__((used)) static const struct stat *
tree_current_stat(struct tree *t)
{
 if (!(t->flags & hasStat)) {




  if (tree_enter_working_dir(t) != 0)
   return ((void*)0);
  if (la_stat(tree_current_access_path(t), &t->st) != 0)

   return ((void*)0);
  t->flags |= hasStat;
 }
 return (&t->st);
}
