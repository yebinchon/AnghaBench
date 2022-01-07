
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tree {int working_dir_fd; scalar_t__ openCount; scalar_t__ maxOpenCount; int flags; TYPE_2__* stack; int depth; int tree_errno; int path; int dirname_length; } ;
struct TYPE_3__ {int s; } ;
struct TYPE_4__ {int flags; int symlink_parent_fd; TYPE_1__ name; } ;


 int O_CLOEXEC ;
 int O_DIRECTORY ;
 int O_RDONLY ;
 int TREE_ERROR_DIR ;
 int __archive_ensure_cloexec_flag (int) ;
 int archive_strlen (int *) ;
 int close (int) ;
 int errno ;
 int isDirLink ;
 int onWorkingDir ;
 int open_on_current_dir (struct tree*,int ,int) ;

__attribute__((used)) static int
tree_descent(struct tree *t)
{
 int flag, new_fd, r = 0;

 t->dirname_length = archive_strlen(&t->path);
 flag = O_RDONLY | O_CLOEXEC;



 new_fd = open_on_current_dir(t, t->stack->name.s, flag);
 __archive_ensure_cloexec_flag(new_fd);
 if (new_fd < 0) {
  t->tree_errno = errno;
  r = TREE_ERROR_DIR;
 } else {
  t->depth++;

  if (t->stack->flags & isDirLink) {
   t->stack->symlink_parent_fd = t->working_dir_fd;
   t->openCount++;
   if (t->openCount > t->maxOpenCount)
    t->maxOpenCount = t->openCount;
  } else
   close(t->working_dir_fd);

  t->working_dir_fd = new_fd;
  t->flags &= ~onWorkingDir;
 }
 return (r);
}
