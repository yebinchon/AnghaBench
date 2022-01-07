
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct file_info** last; } ;
struct iso9660 {TYPE_1__ re_files; } ;
struct file_info {struct file_info* re_next; } ;



__attribute__((used)) static inline void
re_add_entry(struct iso9660 *iso9660, struct file_info *file)
{
 file->re_next = ((void*)0);
 *iso9660->re_files.last = file;
 iso9660->re_files.last = &(file->re_next);
}
