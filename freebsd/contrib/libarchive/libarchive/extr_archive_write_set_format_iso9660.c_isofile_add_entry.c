
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isofile {struct isofile* allnext; } ;
struct TYPE_2__ {struct isofile** last; } ;
struct iso9660 {TYPE_1__ all_file_list; } ;



__attribute__((used)) static void
isofile_add_entry(struct iso9660 *iso9660, struct isofile *file)
{
 file->allnext = ((void*)0);
 *iso9660->all_file_list.last = file;
 iso9660->all_file_list.last = &(file->allnext);
}
