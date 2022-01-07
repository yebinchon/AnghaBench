
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct tree {int flags; struct stat const lst; } ;


 int AT_SYMLINK_NOFOLLOW ;
 scalar_t__ fstatat (int ,int ,struct stat const*,int ) ;
 int hasLstat ;
 scalar_t__ lstat (int ,struct stat const*) ;
 int tree_current_access_path (struct tree*) ;
 int tree_current_dir_fd (struct tree*) ;
 scalar_t__ tree_enter_working_dir (struct tree*) ;

__attribute__((used)) static const struct stat *
tree_current_lstat(struct tree *t)
{
 if (!(t->flags & hasLstat)) {





  if (tree_enter_working_dir(t) != 0)
   return ((void*)0);
  if (lstat(tree_current_access_path(t), &t->lst) != 0)

   return ((void*)0);
  t->flags |= hasLstat;
 }
 return (&t->lst);
}
