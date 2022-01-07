
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int flags; } ;
struct stat {int st_mode; } ;


 int S_ISDIR (int ) ;
 int hasStat ;
 struct stat* tree_current_lstat (struct tree*) ;
 struct stat* tree_current_stat (struct tree*) ;

__attribute__((used)) static int
tree_current_is_physical_dir(struct tree *t)
{
 const struct stat *st;





 if (t->flags & hasStat) {
  st = tree_current_stat(t);
  if (st == ((void*)0))
   return (0);
  if (!S_ISDIR(st->st_mode))
   return (0);
 }
 st = tree_current_lstat(t);

 if (st == ((void*)0))
  return 0;

 return (S_ISDIR(st->st_mode));
}
