
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
typedef scalar_t__ mode_t ;


 scalar_t__ AE_IFDIR ;
 scalar_t__ archive_entry_filetype (struct archive_entry*) ;
 char* archive_entry_pathname (struct archive_entry*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static size_t
path_length(struct archive_entry *entry)
{
 mode_t type;
 const char *path;

 type = archive_entry_filetype(entry);
 path = archive_entry_pathname(entry);

 if (path == ((void*)0))
  return (0);
 if (type == AE_IFDIR &&
     (path[0] == '\0' || path[strlen(path) - 1] != '/')) {
  return strlen(path) + 1;
 } else {
  return strlen(path);
 }
}
