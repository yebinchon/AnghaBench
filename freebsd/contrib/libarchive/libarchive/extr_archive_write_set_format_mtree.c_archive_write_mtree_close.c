
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int s; } ;
struct mtree_writer {TYPE_1__ buf; int * root; } ;
struct archive_write {int archive; struct mtree_writer* format_data; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int __archive_write_output (struct archive_write*,int ,int ) ;
 int archive_write_set_bytes_in_last_block (int *,int) ;
 int write_mtree_entry_tree (struct archive_write*) ;

__attribute__((used)) static int
archive_write_mtree_close(struct archive_write *a)
{
 struct mtree_writer *mtree= a->format_data;
 int ret;

 if (mtree->root != ((void*)0)) {
  ret = write_mtree_entry_tree(a);
  if (ret != ARCHIVE_OK)
   return (ARCHIVE_FATAL);
 }

 archive_write_set_bytes_in_last_block(&a->archive, 1);

 return __archive_write_output(a, mtree->buf.s, mtree->buf.length);
}
