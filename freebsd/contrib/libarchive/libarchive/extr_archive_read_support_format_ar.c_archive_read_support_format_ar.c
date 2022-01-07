
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int archive; } ;
struct archive {int dummy; } ;
struct ar {int * strtab; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_READ_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int ENOMEM ;
 int __archive_read_register_format (struct archive_read*,struct ar*,char*,int ,int *,int ,int ,int ,int *,int ,int *,int *) ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_read_format_ar_bid ;
 int archive_read_format_ar_cleanup ;
 int archive_read_format_ar_read_data ;
 int archive_read_format_ar_read_header ;
 int archive_read_format_ar_skip ;
 int archive_set_error (int *,int ,char*) ;
 scalar_t__ calloc (int,int) ;
 int free (struct ar*) ;

int
archive_read_support_format_ar(struct archive *_a)
{
 struct archive_read *a = (struct archive_read *)_a;
 struct ar *ar;
 int r;

 archive_check_magic(_a, ARCHIVE_READ_MAGIC,
     ARCHIVE_STATE_NEW, "archive_read_support_format_ar");

 ar = (struct ar *)calloc(1, sizeof(*ar));
 if (ar == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate ar data");
  return (ARCHIVE_FATAL);
 }
 ar->strtab = ((void*)0);

 r = __archive_read_register_format(a,
     ar,
     "ar",
     archive_read_format_ar_bid,
     ((void*)0),
     archive_read_format_ar_read_header,
     archive_read_format_ar_read_data,
     archive_read_format_ar_skip,
     ((void*)0),
     archive_read_format_ar_cleanup,
     ((void*)0),
     ((void*)0));

 if (r != ARCHIVE_OK) {
  free(ar);
  return (r);
 }
 return (ARCHIVE_OK);
}
