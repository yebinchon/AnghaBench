
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_4__ {int object; } ;


 int vm_object_pip_wakeup (int ) ;
 int vm_page_sunbusy (TYPE_1__*) ;

__attribute__((used)) static void
page_unbusy(vm_page_t pp)
{

 vm_page_sunbusy(pp);
 vm_object_pip_wakeup(pp->object);
}
