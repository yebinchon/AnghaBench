
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isofile {int content; int * cur_content; int symlink; int basename_utf16; int basename; int parentdir; int * entry; } ;
struct archive_write {int archive; } ;
struct archive_entry {int dummy; } ;


 int * archive_entry_clone (struct archive_entry*) ;
 int * archive_entry_new2 (int *) ;
 int archive_string_init (int *) ;
 struct isofile* calloc (int,int) ;
 int free (struct isofile*) ;

__attribute__((used)) static struct isofile *
isofile_new(struct archive_write *a, struct archive_entry *entry)
{
 struct isofile *file;

 file = calloc(1, sizeof(*file));
 if (file == ((void*)0))
  return (((void*)0));

 if (entry != ((void*)0))
  file->entry = archive_entry_clone(entry);
 else
  file->entry = archive_entry_new2(&a->archive);
 if (file->entry == ((void*)0)) {
  free(file);
  return (((void*)0));
 }
 archive_string_init(&(file->parentdir));
 archive_string_init(&(file->basename));
 archive_string_init(&(file->basename_utf16));
 archive_string_init(&(file->symlink));
 file->cur_content = &(file->content);

 return (file);
}
