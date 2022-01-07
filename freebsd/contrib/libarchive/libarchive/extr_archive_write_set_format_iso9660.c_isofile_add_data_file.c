
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isofile {struct isofile* datanext; } ;
struct TYPE_2__ {struct isofile** last; } ;
struct iso9660 {TYPE_1__ data_file_list; } ;



__attribute__((used)) static void
isofile_add_data_file(struct iso9660 *iso9660, struct isofile *file)
{
 file->datanext = ((void*)0);
 *iso9660->data_file_list.last = file;
 iso9660->data_file_list.last = &(file->datanext);
}
