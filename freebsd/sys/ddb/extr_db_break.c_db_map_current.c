
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * vm_map_t ;
typedef TYPE_2__* thread_t ;
struct TYPE_5__ {TYPE_1__* task; } ;
struct TYPE_4__ {int * map; } ;


 TYPE_2__* current_thread () ;
 int * kernel_map ;

bool
db_map_current(vm_map_t map)
{
 return (1);

}
