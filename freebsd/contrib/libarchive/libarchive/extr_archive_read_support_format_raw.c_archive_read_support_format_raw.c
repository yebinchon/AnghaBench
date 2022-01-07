
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_info {int dummy; } ;
struct archive_read {int archive; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_READ_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int ENOMEM ;
 int __archive_read_register_format (struct archive_read*,struct raw_info*,char*,int ,int *,int ,int ,int ,int *,int ,int *,int *) ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_read_format_raw_bid ;
 int archive_read_format_raw_cleanup ;
 int archive_read_format_raw_read_data ;
 int archive_read_format_raw_read_data_skip ;
 int archive_read_format_raw_read_header ;
 int archive_set_error (int *,int ,char*) ;
 scalar_t__ calloc (int,int) ;
 int free (struct raw_info*) ;

int
archive_read_support_format_raw(struct archive *_a)
{
 struct raw_info *info;
 struct archive_read *a = (struct archive_read *)_a;
 int r;

 archive_check_magic(_a, ARCHIVE_READ_MAGIC,
     ARCHIVE_STATE_NEW, "archive_read_support_format_raw");

 info = (struct raw_info *)calloc(1, sizeof(*info));
 if (info == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate raw_info data");
  return (ARCHIVE_FATAL);
 }

 r = __archive_read_register_format(a,
     info,
     "raw",
     archive_read_format_raw_bid,
     ((void*)0),
     archive_read_format_raw_read_header,
     archive_read_format_raw_read_data,
     archive_read_format_raw_read_data_skip,
     ((void*)0),
     archive_read_format_raw_cleanup,
     ((void*)0),
     ((void*)0));
 if (r != ARCHIVE_OK)
  free(info);
 return (r);
}
