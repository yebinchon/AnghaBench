
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct file_info* first; struct file_info** last; } ;
struct file_info {TYPE_1__ rede_files; struct file_info* re_next; } ;



__attribute__((used)) static inline struct file_info *
rede_get_entry(struct file_info *re)
{
 struct file_info *file;

 if ((file = re->rede_files.first) != ((void*)0)) {
  re->rede_files.first = file->re_next;
  if (re->rede_files.first == ((void*)0))
   re->rede_files.last =
       &(re->rede_files.first);
 }
 return (file);
}
