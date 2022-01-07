
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {int dummy; } ;
struct archive_entry {int dummy; } ;
typedef scalar_t__ mode_t ;


 scalar_t__ AE_IFDIR ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int __archive_write_output (struct archive_write*,char const*,int) ;
 scalar_t__ archive_entry_filetype (struct archive_entry*) ;
 char* archive_entry_pathname (struct archive_entry*) ;
 int strlen (char const*) ;

__attribute__((used)) static int
write_path(struct archive_entry *entry, struct archive_write *archive)
{
 int ret;
 const char *path;
 mode_t type;
 size_t written_bytes;

 path = archive_entry_pathname(entry);
 type = archive_entry_filetype(entry);
 written_bytes = 0;

 if (path == ((void*)0))
  return (ARCHIVE_FATAL);

 ret = __archive_write_output(archive, path, strlen(path));
 if (ret != ARCHIVE_OK)
  return (ARCHIVE_FATAL);
 written_bytes += strlen(path);


 if ((type == AE_IFDIR) & (path[strlen(path) - 1] != '/')) {
  ret = __archive_write_output(archive, "/", 1);
  if (ret != ARCHIVE_OK)
   return (ARCHIVE_FATAL);
  written_bytes += 1;
 }

 return ((int)written_bytes);
}
