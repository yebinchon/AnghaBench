
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_read {TYPE_1__* format; int archive; } ;
struct archive {int dummy; } ;
typedef int int64_t ;
struct TYPE_2__ {int (* read_data ) (struct archive_read*,void const**,size_t*,int *) ;} ;


 int ARCHIVE_ERRNO_PROGRAMMER ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_READ_MAGIC ;
 int ARCHIVE_STATE_DATA ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_set_error (int *,int ,char*) ;
 int stub1 (struct archive_read*,void const**,size_t*,int *) ;

__attribute__((used)) static int
_archive_read_data_block(struct archive *_a,
    const void **buff, size_t *size, int64_t *offset)
{
 struct archive_read *a = (struct archive_read *)_a;
 archive_check_magic(_a, ARCHIVE_READ_MAGIC, ARCHIVE_STATE_DATA,
     "archive_read_data_block");

 if (a->format->read_data == ((void*)0)) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_PROGRAMMER,
      "Internal error: "
      "No format->read_data function registered");
  return (ARCHIVE_FATAL);
 }

 return (a->format->read_data)(a, buff, size, offset);
}
