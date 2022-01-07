
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;


 int open (char const*,int) ;
 int openat (int ,char const*,int) ;
 int tree_current_dir_fd (struct tree*) ;
 scalar_t__ tree_enter_working_dir (struct tree*) ;

__attribute__((used)) static int
open_on_current_dir(struct tree *t, const char *path, int flags)
{



 if (tree_enter_working_dir(t) != 0)
  return (-1);
 return (open(path, flags));

}
