
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lha {int end_of_entry_cleanup; int end_of_entry; scalar_t__ entry_bytes_remaining; scalar_t__ entry_unconsumed; } ;
struct archive_read {TYPE_1__* format; } ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {scalar_t__ data; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 scalar_t__ __archive_read_consume (struct archive_read*,scalar_t__) ;

__attribute__((used)) static int
archive_read_format_lha_read_data_skip(struct archive_read *a)
{
 struct lha *lha;
 int64_t bytes_skipped;

 lha = (struct lha *)(a->format->data);

 if (lha->entry_unconsumed) {

  __archive_read_consume(a, lha->entry_unconsumed);
  lha->entry_unconsumed = 0;
 }


 if (lha->end_of_entry_cleanup)
  return (ARCHIVE_OK);





 bytes_skipped = __archive_read_consume(a, lha->entry_bytes_remaining);
 if (bytes_skipped < 0)
  return (ARCHIVE_FATAL);


 lha->end_of_entry_cleanup = lha->end_of_entry = 1;
 return (ARCHIVE_OK);
}
