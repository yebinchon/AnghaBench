
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct isofile* next; } ;
struct isofile {int symlink; int basename_utf16; int basename; int parentdir; int entry; struct isofile* next; TYPE_1__ content; } ;
struct content {int symlink; int basename_utf16; int basename; int parentdir; int entry; struct content* next; TYPE_1__ content; } ;


 int archive_entry_free (int ) ;
 int archive_string_free (int *) ;
 int free (struct isofile*) ;

__attribute__((used)) static void
isofile_free(struct isofile *file)
{
 struct content *con, *tmp;

 con = file->content.next;
 while (con != ((void*)0)) {
  tmp = con;
  con = con->next;
  free(tmp);
 }
 archive_entry_free(file->entry);
 archive_string_free(&(file->parentdir));
 archive_string_free(&(file->basename));
 archive_string_free(&(file->basename_utf16));
 archive_string_free(&(file->symlink));
 free(file);
}
