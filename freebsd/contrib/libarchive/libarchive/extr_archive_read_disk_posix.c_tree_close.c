
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree {int entry_fd; scalar_t__ d; int working_dir_fd; int initial_dir_fd; TYPE_1__* stack; int restore_time; } ;
struct TYPE_2__ {int flags; int symlink_parent_fd; } ;


 scalar_t__ INVALID_DIR_HANDLE ;
 int close (int) ;
 int close_and_restore_time (int,struct tree*,int *) ;
 int closedir (scalar_t__) ;
 int isDirLink ;
 int tree_pop (struct tree*) ;

__attribute__((used)) static void
tree_close(struct tree *t)
{

 if (t == ((void*)0))
  return;
 if (t->entry_fd >= 0) {
  close_and_restore_time(t->entry_fd, t, &t->restore_time);
  t->entry_fd = -1;
 }

 if (t->d != INVALID_DIR_HANDLE) {
  closedir(t->d);
  t->d = INVALID_DIR_HANDLE;
 }

 while (t->stack != ((void*)0)) {
  if (t->stack->flags & isDirLink)
   close(t->stack->symlink_parent_fd);
  tree_pop(t);
 }
 if (t->working_dir_fd >= 0) {
  close(t->working_dir_fd);
  t->working_dir_fd = -1;
 }
 if (t->initial_dir_fd >= 0) {
  close(t->initial_dir_fd);
  t->initial_dir_fd = -1;
 }
}
