
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct raw_info {scalar_t__ end_of_file; } ;
struct TYPE_4__ {char* archive_format_name; int archive_format; } ;
struct archive_read {TYPE_2__ archive; TYPE_1__* format; } ;
struct archive_entry {int dummy; } ;
struct TYPE_3__ {scalar_t__ data; } ;


 int AE_IFREG ;
 int ARCHIVE_EOF ;
 int ARCHIVE_FORMAT_RAW ;
 int __archive_read_header (struct archive_read*,struct archive_entry*) ;
 int archive_entry_set_filetype (struct archive_entry*,int ) ;
 int archive_entry_set_pathname (struct archive_entry*,char*) ;
 int archive_entry_set_perm (struct archive_entry*,int) ;

__attribute__((used)) static int
archive_read_format_raw_read_header(struct archive_read *a,
    struct archive_entry *entry)
{
 struct raw_info *info;

 info = (struct raw_info *)(a->format->data);
 if (info->end_of_file)
  return (ARCHIVE_EOF);

 a->archive.archive_format = ARCHIVE_FORMAT_RAW;
 a->archive.archive_format_name = "raw";
 archive_entry_set_pathname(entry, "data");
 archive_entry_set_filetype(entry, AE_IFREG);
 archive_entry_set_perm(entry, 0644);



 return __archive_read_header(a, entry);
}
