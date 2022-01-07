
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * first; int ** last; } ;
struct _7zip {TYPE_1__ empty_list; } ;



__attribute__((used)) static void
file_init_register_empty(struct _7zip *zip)
{
 zip->empty_list.first = ((void*)0);
 zip->empty_list.last = &(zip->empty_list.first);
}
