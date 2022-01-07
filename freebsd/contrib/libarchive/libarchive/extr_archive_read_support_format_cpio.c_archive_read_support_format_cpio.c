
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpio {int magic; } ;
struct archive_read {int archive; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_READ_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int CPIO_MAGIC ;
 int ENOMEM ;
 int __archive_read_register_format (struct archive_read*,struct cpio*,char*,int ,int ,int ,int ,int ,int *,int ,int *,int *) ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_read_format_cpio_bid ;
 int archive_read_format_cpio_cleanup ;
 int archive_read_format_cpio_options ;
 int archive_read_format_cpio_read_data ;
 int archive_read_format_cpio_read_header ;
 int archive_read_format_cpio_skip ;
 int archive_set_error (int *,int ,char*) ;
 scalar_t__ calloc (int,int) ;
 int free (struct cpio*) ;

int
archive_read_support_format_cpio(struct archive *_a)
{
 struct archive_read *a = (struct archive_read *)_a;
 struct cpio *cpio;
 int r;

 archive_check_magic(_a, ARCHIVE_READ_MAGIC,
     ARCHIVE_STATE_NEW, "archive_read_support_format_cpio");

 cpio = (struct cpio *)calloc(1, sizeof(*cpio));
 if (cpio == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM, "Can't allocate cpio data");
  return (ARCHIVE_FATAL);
 }
 cpio->magic = CPIO_MAGIC;

 r = __archive_read_register_format(a,
     cpio,
     "cpio",
     archive_read_format_cpio_bid,
     archive_read_format_cpio_options,
     archive_read_format_cpio_read_header,
     archive_read_format_cpio_read_data,
     archive_read_format_cpio_skip,
     ((void*)0),
     archive_read_format_cpio_cleanup,
     ((void*)0),
     ((void*)0));

 if (r != ARCHIVE_OK)
  free(cpio);
 return (ARCHIVE_OK);
}
