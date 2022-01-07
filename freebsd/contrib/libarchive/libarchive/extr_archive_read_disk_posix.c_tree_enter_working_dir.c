
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {scalar_t__ depth; int flags; int working_dir_fd; } ;


 int fchdir (int ) ;
 int onInitialDir ;
 int onWorkingDir ;

__attribute__((used)) static int
tree_enter_working_dir(struct tree *t)
{
 int r = 0;






 if (t->depth > 0 && (t->flags & onWorkingDir) == 0) {
  r = fchdir(t->working_dir_fd);
  if (r == 0) {
   t->flags &= ~onInitialDir;
   t->flags |= onWorkingDir;
  }
 }
 return (r);
}
