
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tar {scalar_t__ entry_bytes_remaining; scalar_t__ entry_padding; scalar_t__ entry_bytes_unconsumed; struct sparse_block* sparse_list; } ;
struct sparse_block {scalar_t__ remaining; int hole; struct sparse_block* next; } ;
struct archive_read {TYPE_1__* format; } ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {scalar_t__ data; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 scalar_t__ INT64_MAX ;
 scalar_t__ __archive_read_consume (struct archive_read*,scalar_t__) ;
 int gnu_clear_sparse_list (struct tar*) ;

__attribute__((used)) static int
archive_read_format_tar_skip(struct archive_read *a)
{
 int64_t bytes_skipped;
 int64_t request;
 struct sparse_block *p;
 struct tar* tar;

 tar = (struct tar *)(a->format->data);


 request = 0;
 for (p = tar->sparse_list; p != ((void*)0); p = p->next) {
  if (!p->hole) {
   if (p->remaining >= INT64_MAX - request) {
    return ARCHIVE_FATAL;
   }
   request += p->remaining;
  }
 }
 if (request > tar->entry_bytes_remaining)
  request = tar->entry_bytes_remaining;
 request += tar->entry_padding + tar->entry_bytes_unconsumed;

 bytes_skipped = __archive_read_consume(a, request);
 if (bytes_skipped < 0)
  return (ARCHIVE_FATAL);

 tar->entry_bytes_remaining = 0;
 tar->entry_bytes_unconsumed = 0;
 tar->entry_padding = 0;


 gnu_clear_sparse_list(tar);

 return (ARCHIVE_OK);
}
