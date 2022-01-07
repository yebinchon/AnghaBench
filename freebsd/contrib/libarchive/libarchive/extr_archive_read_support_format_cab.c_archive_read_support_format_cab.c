
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cab {int ws; } ;
struct archive_read {int archive; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_READ_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int ENOMEM ;
 int __archive_read_register_format (struct archive_read*,struct cab*,char*,int ,int ,int ,int ,int ,int *,int ,int *,int *) ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_read_format_cab_bid ;
 int archive_read_format_cab_cleanup ;
 int archive_read_format_cab_options ;
 int archive_read_format_cab_read_data ;
 int archive_read_format_cab_read_data_skip ;
 int archive_read_format_cab_read_header ;
 int archive_set_error (int *,int ,char*) ;
 int archive_string_init (int *) ;
 int archive_wstring_ensure (int *,int) ;
 scalar_t__ calloc (int,int) ;
 int free (struct cab*) ;

int
archive_read_support_format_cab(struct archive *_a)
{
 struct archive_read *a = (struct archive_read *)_a;
 struct cab *cab;
 int r;

 archive_check_magic(_a, ARCHIVE_READ_MAGIC,
     ARCHIVE_STATE_NEW, "archive_read_support_format_cab");

 cab = (struct cab *)calloc(1, sizeof(*cab));
 if (cab == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate CAB data");
  return (ARCHIVE_FATAL);
 }
 archive_string_init(&cab->ws);
 archive_wstring_ensure(&cab->ws, 256);

 r = __archive_read_register_format(a,
     cab,
     "cab",
     archive_read_format_cab_bid,
     archive_read_format_cab_options,
     archive_read_format_cab_read_header,
     archive_read_format_cab_read_data,
     archive_read_format_cab_read_data_skip,
     ((void*)0),
     archive_read_format_cab_cleanup,
     ((void*)0),
     ((void*)0));

 if (r != ARCHIVE_OK)
  free(cab);
 return (ARCHIVE_OK);
}
