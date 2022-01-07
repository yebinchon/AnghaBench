
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_entry {TYPE_1__* sparse_p; } ;
typedef scalar_t__ la_int64_t ;
struct TYPE_2__ {struct TYPE_2__* next; scalar_t__ length; scalar_t__ offset; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;

int
archive_entry_sparse_next(struct archive_entry * entry,
 la_int64_t *offset, la_int64_t *length)
{
 if (entry->sparse_p) {
  *offset = entry->sparse_p->offset;
  *length = entry->sparse_p->length;

  entry->sparse_p = entry->sparse_p->next;

  return (ARCHIVE_OK);
 } else {
  *offset = 0;
  *length = 0;
  return (ARCHIVE_WARN);
 }
}
