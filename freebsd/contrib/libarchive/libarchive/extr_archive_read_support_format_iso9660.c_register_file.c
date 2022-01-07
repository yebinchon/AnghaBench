
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iso9660 {struct file_info* use_files; } ;
struct file_info {struct file_info* use_next; } ;



__attribute__((used)) static void
register_file(struct iso9660 *iso9660, struct file_info *file)
{

 file->use_next = iso9660->use_files;
 iso9660->use_files = file;
}
