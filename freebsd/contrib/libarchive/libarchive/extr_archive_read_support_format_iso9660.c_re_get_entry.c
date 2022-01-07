
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct file_info* first; struct file_info** last; } ;
struct iso9660 {TYPE_1__ re_files; } ;
struct file_info {struct file_info* re_next; } ;



__attribute__((used)) static inline struct file_info *
re_get_entry(struct iso9660 *iso9660)
{
 struct file_info *file;

 if ((file = iso9660->re_files.first) != ((void*)0)) {
  iso9660->re_files.first = file->re_next;
  if (iso9660->re_files.first == ((void*)0))
   iso9660->re_files.last =
       &(iso9660->re_files.first);
 }
 return (file);
}
