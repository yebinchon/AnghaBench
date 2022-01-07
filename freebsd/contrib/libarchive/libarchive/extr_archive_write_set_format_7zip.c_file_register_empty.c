
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {struct file* next; } ;
struct TYPE_2__ {struct file** last; } ;
struct _7zip {TYPE_1__ empty_list; } ;



__attribute__((used)) static void
file_register_empty(struct _7zip *zip, struct file *file)
{
 file->next = ((void*)0);
 *zip->empty_list.last = file;
 zip->empty_list.last = &(file->next);
}
