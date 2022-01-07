
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree {int entry_fd; int initial_filesystem_id; int maxOpenCount; int openCount; scalar_t__ initial_dir_fd; int working_dir_fd; TYPE_1__* stack; scalar_t__ entry_remaining_bytes; scalar_t__ entry_eof; int path; int initial_symlink_mode; int symlink_mode; int d; int * current; scalar_t__ descend; scalar_t__ depth; scalar_t__ dirname_length; scalar_t__ tree_errno; scalar_t__ visit_type; int flags; } ;
struct TYPE_2__ {int flags; } ;


 int INVALID_DIR_HANDLE ;
 int const O_CLOEXEC ;
 int O_EXEC ;
 int O_PATH ;
 int const O_RDONLY ;
 int O_SEARCH ;
 int __archive_ensure_cloexec_flag (scalar_t__) ;
 int archive_string_empty (int *) ;
 int needsFirstVisit ;
 int needsRestoreTimes ;
 int onInitialDir ;
 void* open (char*,int const) ;
 int tree_dup (scalar_t__) ;
 int tree_push (struct tree*,char const*,int ,int ,int ,int *) ;

__attribute__((used)) static struct tree *
tree_reopen(struct tree *t, const char *path, int restore_time)
{
 t->flags = (restore_time != 0)?needsRestoreTimes:0;
 t->flags |= onInitialDir;
 t->visit_type = 0;
 t->tree_errno = 0;
 t->dirname_length = 0;
 t->depth = 0;
 t->descend = 0;
 t->current = ((void*)0);
 t->d = INVALID_DIR_HANDLE;
 t->symlink_mode = t->initial_symlink_mode;
 archive_string_empty(&t->path);
 t->entry_fd = -1;
 t->entry_eof = 0;
 t->entry_remaining_bytes = 0;
 t->initial_filesystem_id = -1;


 tree_push(t, path, 0, 0, 0, ((void*)0));
 t->stack->flags = needsFirstVisit;
 t->maxOpenCount = t->openCount = 1;
 t->initial_dir_fd = open(".", O_RDONLY | O_CLOEXEC);
 __archive_ensure_cloexec_flag(t->initial_dir_fd);
 t->working_dir_fd = tree_dup(t->initial_dir_fd);
 return (t);
}
