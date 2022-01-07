
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int archive; int skip_file_ino; int skip_file_dev; scalar_t__ skip_file_set; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int archive_copy_error (int *,struct archive*) ;
 scalar_t__ archive_entry_size (struct archive_entry*) ;
 int archive_entry_size_is_set (struct archive_entry*) ;
 int archive_write_disk_set_skip_file (struct archive*,int ,int ) ;
 int archive_write_finish_entry (struct archive*) ;
 int archive_write_header (struct archive*,struct archive_entry*) ;
 int copy_data (struct archive*,struct archive*) ;

int
archive_read_extract2(struct archive *_a, struct archive_entry *entry,
    struct archive *ad)
{
 struct archive_read *a = (struct archive_read *)_a;
 int r, r2;


 if (a->skip_file_set)
  archive_write_disk_set_skip_file(ad,
      a->skip_file_dev, a->skip_file_ino);
 r = archive_write_header(ad, entry);
 if (r < ARCHIVE_WARN)
  r = ARCHIVE_WARN;
 if (r != ARCHIVE_OK)

   archive_copy_error(&a->archive, ad);
 else if (!archive_entry_size_is_set(entry) || archive_entry_size(entry) > 0)

  r = copy_data(_a, ad);
 r2 = archive_write_finish_entry(ad);
 if (r2 < ARCHIVE_WARN)
  r2 = ARCHIVE_WARN;

 if (r2 != ARCHIVE_OK && r == ARCHIVE_OK)
  archive_copy_error(&a->archive, ad);

 if (r2 < r)
  r = r2;
 return (r);
}
