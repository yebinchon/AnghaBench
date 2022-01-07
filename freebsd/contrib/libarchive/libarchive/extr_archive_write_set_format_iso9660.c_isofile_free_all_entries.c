
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isofile {struct isofile* allnext; } ;
struct TYPE_2__ {struct isofile* first; } ;
struct iso9660 {TYPE_1__ all_file_list; } ;


 int isofile_free (struct isofile*) ;

__attribute__((used)) static void
isofile_free_all_entries(struct iso9660 *iso9660)
{
 struct isofile *file, *file_next;

 file = iso9660->all_file_list.first;
 while (file != ((void*)0)) {
  file_next = file->allnext;
  isofile_free(file);
  file = file_next;
 }
}
