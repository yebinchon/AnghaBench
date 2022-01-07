
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int st_ino; int st_dev; } ;
struct TYPE_5__ {int st_ino; int st_dev; } ;
struct tree {scalar_t__ visit_type; scalar_t__ descend; TYPE_4__* stack; int restore_time; TYPE_3__ st; int current_filesystem_id; int basename; TYPE_1__ lst; } ;
struct archive_read_disk {struct tree* tree; } ;
struct archive {int dummy; } ;
struct TYPE_8__ {int flags; TYPE_2__* parent; } ;
struct TYPE_6__ {int * parent; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_READ_DISK_MAGIC ;
 int ARCHIVE_STATE_DATA ;
 int ARCHIVE_STATE_HEADER ;
 scalar_t__ TREE_REGULAR ;
 int archive_check_magic (struct archive*,int ,int,char*) ;
 int isDir ;
 int isDirLink ;
 scalar_t__ tree_current_is_dir (struct tree*) ;
 scalar_t__ tree_current_is_physical_dir (struct tree*) ;
 int tree_push (struct tree*,int ,int ,int ,int ,int *) ;

int
archive_read_disk_descend(struct archive *_a)
{
 struct archive_read_disk *a = (struct archive_read_disk *)_a;
 struct tree *t = a->tree;

 archive_check_magic(_a, ARCHIVE_READ_DISK_MAGIC,
     ARCHIVE_STATE_HEADER | ARCHIVE_STATE_DATA,
     "archive_read_disk_descend");

 if (t->visit_type != TREE_REGULAR || !t->descend)
  return (ARCHIVE_OK);
 if (tree_current_is_physical_dir(t)) {
  tree_push(t, t->basename, t->current_filesystem_id,
      t->lst.st_dev, t->lst.st_ino, &t->restore_time);
  if (t->stack->parent->parent != ((void*)0))
   t->stack->flags |= isDir;
  else
   t->stack->flags |= isDirLink;
 } else if (tree_current_is_dir(t)) {
  tree_push(t, t->basename, t->current_filesystem_id,
      t->st.st_dev, t->st.st_ino, &t->restore_time);
  t->stack->flags |= isDirLink;
 }
 t->descend = 0;
 return (ARCHIVE_OK);
}
