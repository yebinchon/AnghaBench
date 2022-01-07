
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_entry {int flags; int symlink_parent_fd; int restore_time; } ;
struct tree {int working_dir_fd; int depth; int openCount; int flags; int tree_errno; struct tree_entry* stack; } ;


 int O_CLOEXEC ;
 int O_RDONLY ;
 int TREE_ERROR_FATAL ;
 int __archive_ensure_cloexec_flag (int) ;
 int close_and_restore_time (int,struct tree*,int *) ;
 int errno ;
 int isDirLink ;
 int onWorkingDir ;
 int open_on_current_dir (struct tree*,char*,int) ;

__attribute__((used)) static int
tree_ascend(struct tree *t)
{
 struct tree_entry *te;
 int new_fd, r = 0, prev_dir_fd;

 te = t->stack;
 prev_dir_fd = t->working_dir_fd;
 if (te->flags & isDirLink)
  new_fd = te->symlink_parent_fd;
 else {
  new_fd = open_on_current_dir(t, "..", O_RDONLY | O_CLOEXEC);
  __archive_ensure_cloexec_flag(new_fd);
 }
 if (new_fd < 0) {
  t->tree_errno = errno;
  r = TREE_ERROR_FATAL;
 } else {

  t->working_dir_fd = new_fd;
  t->flags &= ~onWorkingDir;


  close_and_restore_time(prev_dir_fd, t, &te->restore_time);
  if (te->flags & isDirLink) {
   t->openCount--;
   te->symlink_parent_fd = -1;
  }
  t->depth--;
 }
 return (r);
}
