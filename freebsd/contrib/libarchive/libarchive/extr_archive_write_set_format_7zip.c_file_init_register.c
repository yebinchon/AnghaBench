
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * first; int ** last; } ;
struct _7zip {TYPE_1__ file_list; } ;



__attribute__((used)) static void
file_init_register(struct _7zip *zip)
{
 zip->file_list.first = ((void*)0);
 zip->file_list.last = &(zip->file_list.first);
}
