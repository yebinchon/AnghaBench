
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * first; int ** last; } ;
struct TYPE_3__ {int * first; int ** last; } ;
struct iso9660 {int opt_support_joliet; int opt_support_rockridge; TYPE_2__ re_files; TYPE_1__ cache_files; int magic; } ;
struct archive_read {int archive; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_READ_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int ENOMEM ;
 int ISO9660_MAGIC ;
 int __archive_read_register_format (struct archive_read*,struct iso9660*,char*,int ,int ,int ,int ,int ,int *,int ,int *,int *) ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_read_format_iso9660_bid ;
 int archive_read_format_iso9660_cleanup ;
 int archive_read_format_iso9660_options ;
 int archive_read_format_iso9660_read_data ;
 int archive_read_format_iso9660_read_data_skip ;
 int archive_read_format_iso9660_read_header ;
 int archive_set_error (int *,int ,char*) ;
 scalar_t__ calloc (int,int) ;
 int free (struct iso9660*) ;

int
archive_read_support_format_iso9660(struct archive *_a)
{
 struct archive_read *a = (struct archive_read *)_a;
 struct iso9660 *iso9660;
 int r;

 archive_check_magic(_a, ARCHIVE_READ_MAGIC,
     ARCHIVE_STATE_NEW, "archive_read_support_format_iso9660");

 iso9660 = (struct iso9660 *)calloc(1, sizeof(*iso9660));
 if (iso9660 == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate iso9660 data");
  return (ARCHIVE_FATAL);
 }
 iso9660->magic = ISO9660_MAGIC;
 iso9660->cache_files.first = ((void*)0);
 iso9660->cache_files.last = &(iso9660->cache_files.first);
 iso9660->re_files.first = ((void*)0);
 iso9660->re_files.last = &(iso9660->re_files.first);

 iso9660->opt_support_joliet = 1;

 iso9660->opt_support_rockridge = 1;

 r = __archive_read_register_format(a,
     iso9660,
     "iso9660",
     archive_read_format_iso9660_bid,
     archive_read_format_iso9660_options,
     archive_read_format_iso9660_read_header,
     archive_read_format_iso9660_read_data,
     archive_read_format_iso9660_read_data_skip,
     ((void*)0),
     archive_read_format_iso9660_cleanup,
     ((void*)0),
     ((void*)0));

 if (r != ARCHIVE_OK) {
  free(iso9660);
  return (r);
 }
 return (ARCHIVE_OK);
}
