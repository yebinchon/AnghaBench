
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct file_info** last; } ;
struct file_info {struct file_info* re_next; TYPE_1__ rede_files; struct file_info* parent; int re; } ;



__attribute__((used)) static inline int
rede_add_entry(struct file_info *file)
{
 struct file_info *re;




 re = file->parent;
 while (re != ((void*)0) && !re->re)
  re = re->parent;
 if (re == ((void*)0))
  return (-1);

 file->re_next = ((void*)0);
 *re->rede_files.last = file;
 re->rede_files.last = &(file->re_next);
 return (0);
}
