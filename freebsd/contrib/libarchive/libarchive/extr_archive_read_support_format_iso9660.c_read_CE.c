
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct read_ce_queue {TYPE_1__* reqs; scalar_t__ cnt; } ;
struct iso9660 {size_t logical_block_size; scalar_t__ current_position; struct read_ce_queue read_ce_req; } ;
struct file_info {size_t ce_offset; size_t ce_size; } ;
struct archive_read {int archive; } ;
struct TYPE_2__ {scalar_t__ offset; struct file_info* file; } ;


 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 unsigned char* __archive_read_ahead (struct archive_read*,size_t,int *) ;
 int __archive_read_consume (struct archive_read*,size_t) ;
 int archive_set_error (int *,int ,char*) ;
 int next_CE (struct read_ce_queue*) ;
 int parse_rockridge (struct archive_read*,struct file_info*,unsigned char const*,unsigned char const*) ;

__attribute__((used)) static int
read_CE(struct archive_read *a, struct iso9660 *iso9660)
{
 struct read_ce_queue *heap;
 const unsigned char *b, *p, *end;
 struct file_info *file;
 size_t step;
 int r;


 heap = &(iso9660->read_ce_req);
 step = iso9660->logical_block_size;
 while (heap->cnt &&
     heap->reqs[0].offset == iso9660->current_position) {
  b = __archive_read_ahead(a, step, ((void*)0));
  if (b == ((void*)0)) {
   archive_set_error(&a->archive,
       ARCHIVE_ERRNO_MISC,
       "Failed to read full block when scanning "
       "ISO9660 directory list");
   return (ARCHIVE_FATAL);
  }
  do {
   file = heap->reqs[0].file;
   if (file->ce_offset + file->ce_size > step) {
    archive_set_error(&a->archive,
        ARCHIVE_ERRNO_FILE_FORMAT,
        "Malformed CE information");
    return (ARCHIVE_FATAL);
   }
   p = b + file->ce_offset;
   end = p + file->ce_size;
   next_CE(heap);
   r = parse_rockridge(a, file, p, end);
   if (r != ARCHIVE_OK)
    return (ARCHIVE_FATAL);
  } while (heap->cnt &&
      heap->reqs[0].offset == iso9660->current_position);



  __archive_read_consume(a, step);
  iso9660->current_position += step;
 }
 return (ARCHIVE_OK);
}
