
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_read {TYPE_1__* format; int archive; } ;
struct archive {int dummy; } ;
typedef int la_int64_t ;
typedef int int64_t ;
struct TYPE_2__ {int (* seek_data ) (struct archive_read*,int ,int) ;} ;


 int ARCHIVE_ERRNO_PROGRAMMER ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_READ_MAGIC ;
 int ARCHIVE_STATE_DATA ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_set_error (int *,int ,char*) ;
 int stub1 (struct archive_read*,int ,int) ;

la_int64_t
archive_seek_data(struct archive *_a, int64_t offset, int whence)
{
 struct archive_read *a = (struct archive_read *)_a;
 archive_check_magic(_a, ARCHIVE_READ_MAGIC, ARCHIVE_STATE_DATA,
     "archive_seek_data_block");

 if (a->format->seek_data == ((void*)0)) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_PROGRAMMER,
      "Internal error: "
      "No format_seek_data_block function registered");
  return (ARCHIVE_FATAL);
 }

 return (a->format->seek_data)(a, offset, whence);
}
