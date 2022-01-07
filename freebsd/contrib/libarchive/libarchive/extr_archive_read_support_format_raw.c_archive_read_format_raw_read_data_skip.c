
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct raw_info {int end_of_file; scalar_t__ unconsumed; } ;
struct archive_read {TYPE_1__* format; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int ARCHIVE_OK ;
 int __archive_read_consume (struct archive_read*,scalar_t__) ;

__attribute__((used)) static int
archive_read_format_raw_read_data_skip(struct archive_read *a)
{
 struct raw_info *info = (struct raw_info *)(a->format->data);


 if (info->unconsumed) {
  __archive_read_consume(a, info->unconsumed);
  info->unconsumed = 0;
 }
 info->end_of_file = 1;
 return (ARCHIVE_OK);
}
