
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_read {TYPE_1__* format; } ;
struct ar {scalar_t__ entry_padding; scalar_t__ entry_bytes_unconsumed; scalar_t__ entry_bytes_remaining; } ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {scalar_t__ data; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 scalar_t__ __archive_read_consume (struct archive_read*,scalar_t__) ;

__attribute__((used)) static int
archive_read_format_ar_skip(struct archive_read *a)
{
 int64_t bytes_skipped;
 struct ar* ar;

 ar = (struct ar *)(a->format->data);

 bytes_skipped = __archive_read_consume(a,
     ar->entry_bytes_remaining + ar->entry_padding
     + ar->entry_bytes_unconsumed);
 if (bytes_skipped < 0)
  return (ARCHIVE_FATAL);

 ar->entry_bytes_remaining = 0;
 ar->entry_bytes_unconsumed = 0;
 ar->entry_padding = 0;

 return (ARCHIVE_OK);
}
