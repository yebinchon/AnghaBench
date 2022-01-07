
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int flags; int initial_dir_fd; } ;


 int fchdir (int ) ;
 int onInitialDir ;
 int onWorkingDir ;

__attribute__((used)) static int
tree_enter_initial_dir(struct tree *t)
{
 int r = 0;

 if ((t->flags & onInitialDir) == 0) {
  r = fchdir(t->initial_dir_fd);
  if (r == 0) {
   t->flags &= ~onWorkingDir;
   t->flags |= onInitialDir;
  }
 }
 return (r);
}
