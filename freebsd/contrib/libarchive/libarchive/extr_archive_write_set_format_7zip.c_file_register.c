
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {struct file* next; } ;
struct TYPE_2__ {struct file** last; } ;
struct _7zip {TYPE_1__ file_list; } ;



__attribute__((used)) static void
file_register(struct _7zip *zip, struct file *file)
{
 file->next = ((void*)0);
 *zip->file_list.last = file;
 zip->file_list.last = &(file->next);
}
