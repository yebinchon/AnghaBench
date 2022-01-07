
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtree_writer {size_t entry_bytes_remaining; TYPE_1__* mtree_entry; } ;
struct archive_write {struct mtree_writer* format_data; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {scalar_t__ filetype; } ;


 scalar_t__ AE_IFREG ;
 int sum_update (struct mtree_writer*,void const*,size_t) ;

__attribute__((used)) static ssize_t
archive_write_mtree_data(struct archive_write *a, const void *buff, size_t n)
{
 struct mtree_writer *mtree= a->format_data;

 if (n > mtree->entry_bytes_remaining)
  n = (size_t)mtree->entry_bytes_remaining;
 mtree->entry_bytes_remaining -= n;


 if (mtree->mtree_entry == ((void*)0))
  return (n);

 if (mtree->mtree_entry->filetype == AE_IFREG)
  sum_update(mtree, buff, n);

 return (n);
}
