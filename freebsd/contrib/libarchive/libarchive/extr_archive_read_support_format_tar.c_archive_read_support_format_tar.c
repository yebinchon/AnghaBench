
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tar {int process_mac_extensions; } ;
struct archive_read {int archive; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_READ_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int ENOMEM ;
 int __archive_read_register_format (struct archive_read*,struct tar*,char*,int ,int ,int ,int ,int ,int *,int ,int *,int *) ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_read_format_tar_bid ;
 int archive_read_format_tar_cleanup ;
 int archive_read_format_tar_options ;
 int archive_read_format_tar_read_data ;
 int archive_read_format_tar_read_header ;
 int archive_read_format_tar_skip ;
 int archive_set_error (int *,int ,char*) ;
 scalar_t__ calloc (int,int) ;
 int free (struct tar*) ;

int
archive_read_support_format_tar(struct archive *_a)
{
 struct archive_read *a = (struct archive_read *)_a;
 struct tar *tar;
 int r;

 archive_check_magic(_a, ARCHIVE_READ_MAGIC,
     ARCHIVE_STATE_NEW, "archive_read_support_format_tar");

 tar = (struct tar *)calloc(1, sizeof(*tar));
 if (tar == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate tar data");
  return (ARCHIVE_FATAL);
 }





 r = __archive_read_register_format(a, tar, "tar",
     archive_read_format_tar_bid,
     archive_read_format_tar_options,
     archive_read_format_tar_read_header,
     archive_read_format_tar_read_data,
     archive_read_format_tar_skip,
     ((void*)0),
     archive_read_format_tar_cleanup,
     ((void*)0),
     ((void*)0));

 if (r != ARCHIVE_OK)
  free(tar);
 return (ARCHIVE_OK);
}
