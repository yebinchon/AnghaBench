
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef int vm_map_t ;
typedef TYPE_2__* thread_t ;
struct TYPE_5__ {TYPE_1__* task; } ;
struct TYPE_4__ {int map; } ;


 scalar_t__ VM_MAX_ADDRESS ;
 scalar_t__ VM_MIN_ADDRESS ;
 TYPE_2__* current_thread () ;
 int kernel_map ;

vm_map_t
db_map_addr(vm_offset_t addr)
{
     return kernel_map;
}
