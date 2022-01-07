
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {struct file* next; } ;
struct TYPE_2__ {struct file* first; } ;
struct _7zip {TYPE_1__ file_list; } ;


 int file_free (struct file*) ;

__attribute__((used)) static void
file_free_register(struct _7zip *zip)
{
 struct file *file, *file_next;

 file = zip->file_list.first;
 while (file != ((void*)0)) {
  file_next = file->next;
  file_free(file);
  file = file_next;
 }
}
