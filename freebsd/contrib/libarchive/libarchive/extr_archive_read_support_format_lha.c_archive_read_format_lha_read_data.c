
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lha {scalar_t__ entry_is_compressed; int entry_offset; scalar_t__ end_of_entry; scalar_t__ entry_unconsumed; } ;
struct archive_read {TYPE_1__* format; } ;
typedef int int64_t ;
struct TYPE_2__ {scalar_t__ data; } ;


 int __archive_read_consume (struct archive_read*,scalar_t__) ;
 int lha_end_of_entry (struct archive_read*) ;
 int lha_read_data_lzh (struct archive_read*,void const**,size_t*,int *) ;
 int lha_read_data_none (struct archive_read*,void const**,size_t*,int *) ;

__attribute__((used)) static int
archive_read_format_lha_read_data(struct archive_read *a,
    const void **buff, size_t *size, int64_t *offset)
{
 struct lha *lha = (struct lha *)(a->format->data);
 int r;

 if (lha->entry_unconsumed) {

  __archive_read_consume(a, lha->entry_unconsumed);
  lha->entry_unconsumed = 0;
 }
 if (lha->end_of_entry) {
  *offset = lha->entry_offset;
  *size = 0;
  *buff = ((void*)0);
  return (lha_end_of_entry(a));
 }

 if (lha->entry_is_compressed)
  r = lha_read_data_lzh(a, buff, size, offset);
 else

  r = lha_read_data_none(a, buff, size, offset);
 return (r);
}
