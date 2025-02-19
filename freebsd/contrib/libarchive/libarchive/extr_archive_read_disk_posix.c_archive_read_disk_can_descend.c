
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {scalar_t__ visit_type; scalar_t__ descend; } ;
struct archive_read_disk {struct tree* tree; } ;
struct archive {int dummy; } ;


 int ARCHIVE_READ_DISK_MAGIC ;
 int ARCHIVE_STATE_DATA ;
 int ARCHIVE_STATE_HEADER ;
 scalar_t__ TREE_REGULAR ;
 int archive_check_magic (struct archive*,int ,int,char*) ;

int
archive_read_disk_can_descend(struct archive *_a)
{
 struct archive_read_disk *a = (struct archive_read_disk *)_a;
 struct tree *t = a->tree;

 archive_check_magic(_a, ARCHIVE_READ_DISK_MAGIC,
     ARCHIVE_STATE_HEADER | ARCHIVE_STATE_DATA,
     "archive_read_disk_can_descend");

 return (t->visit_type == TREE_REGULAR && t->descend);
}
