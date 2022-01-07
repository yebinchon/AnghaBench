
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {int archive; } ;
struct archive_string_conv {int dummy; } ;
struct archive_entry {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 scalar_t__ ENOMEM ;
 int archive_entry_hardlink_l (struct archive_entry*,char const**,size_t*,struct archive_string_conv*) ;
 int archive_set_error (int *,scalar_t__,char*) ;
 scalar_t__ errno ;

__attribute__((used)) static int
get_entry_hardlink(struct archive_write *a, struct archive_entry *entry,
    const char **name, size_t *length, struct archive_string_conv *sc)
{
 int r;

 r = archive_entry_hardlink_l(entry, name, length, sc);
 if (r != 0) {
  if (errno == ENOMEM) {
   archive_set_error(&a->archive, ENOMEM,
       "Can't allocate memory for Linkname");
   return (ARCHIVE_FATAL);
  }
  return (ARCHIVE_WARN);
 }
 return (ARCHIVE_OK);
}
