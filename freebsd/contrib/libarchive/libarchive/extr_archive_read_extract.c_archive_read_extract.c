
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_extract {int * ad; } ;
struct archive_read {int archive; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ENOMEM ;
 struct archive_read_extract* __archive_read_get_extract (struct archive_read*) ;
 int archive_read_extract2 (int *,struct archive_entry*,int *) ;
 int archive_set_error (int *,int ,char*) ;
 int * archive_write_disk_new () ;
 int archive_write_disk_set_options (int *,int) ;
 int archive_write_disk_set_standard_lookup (int *) ;

int
archive_read_extract(struct archive *_a, struct archive_entry *entry, int flags)
{
 struct archive_read_extract *extract;
 struct archive_read * a = (struct archive_read *)_a;

 extract = __archive_read_get_extract(a);
 if (extract == ((void*)0))
  return (ARCHIVE_FATAL);


 if (extract->ad == ((void*)0)) {
  extract->ad = archive_write_disk_new();
  if (extract->ad == ((void*)0)) {
   archive_set_error(&a->archive, ENOMEM, "Can't extract");
   return (ARCHIVE_FATAL);
  }
  archive_write_disk_set_standard_lookup(extract->ad);
 }

 archive_write_disk_set_options(extract->ad, flags);
 return (archive_read_extract2(&a->archive, entry, extract->ad));
}
