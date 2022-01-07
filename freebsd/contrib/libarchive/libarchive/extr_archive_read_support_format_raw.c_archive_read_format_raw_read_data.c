
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct raw_info {size_t unconsumed; int end_of_file; size_t offset; } ;
struct archive_read {TYPE_1__* format; } ;
typedef void* ssize_t ;
typedef size_t int64_t ;
struct TYPE_2__ {scalar_t__ data; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_OK ;
 void* __archive_read_ahead (struct archive_read*,int,void**) ;
 int __archive_read_consume (struct archive_read*,size_t) ;

__attribute__((used)) static int
archive_read_format_raw_read_data(struct archive_read *a,
    const void **buff, size_t *size, int64_t *offset)
{
 struct raw_info *info;
 ssize_t avail;

 info = (struct raw_info *)(a->format->data);


 if (info->unconsumed) {
  __archive_read_consume(a, info->unconsumed);
  info->unconsumed = 0;
 }

 if (info->end_of_file)
  return (ARCHIVE_EOF);


 *buff = __archive_read_ahead(a, 1, &avail);
 if (avail > 0) {

  *size = avail;
  *offset = info->offset;
  info->offset += *size;
  info->unconsumed = avail;
  return (ARCHIVE_OK);
 } else if (0 == avail) {

  info->end_of_file = 1;
  *size = 0;
  *offset = info->offset;
  return (ARCHIVE_EOF);
 } else {

  *size = 0;
  *offset = info->offset;
  return ((int)avail);
 }
}
