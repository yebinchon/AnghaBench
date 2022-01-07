
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_info {int name; struct file_info* parent; } ;
struct archive_string {char const* s; } ;


 int archive_strcat (struct archive_string*,char*) ;
 int archive_string_concat (struct archive_string*,int *) ;
 scalar_t__ archive_strlen (int *) ;

__attribute__((used)) static const char *
build_pathname(struct archive_string *as, struct file_info *file, int depth)
{


 if (depth > 1000) {
  return ((void*)0);
 }
 if (file->parent != ((void*)0) && archive_strlen(&file->parent->name) > 0) {
  if (build_pathname(as, file->parent, depth + 1) == ((void*)0)) {
   return ((void*)0);
  }
  archive_strcat(as, "/");
 }
 if (archive_strlen(&file->name) == 0)
  archive_strcat(as, ".");
 else
  archive_string_concat(as, &file->name);
 return (as->s);
}
