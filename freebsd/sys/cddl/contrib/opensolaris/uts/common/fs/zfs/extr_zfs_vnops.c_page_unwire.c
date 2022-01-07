
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;


 int PQ_ACTIVE ;
 int vm_page_unwire (int ,int ) ;

__attribute__((used)) static void
page_unwire(vm_page_t pp)
{

 vm_page_unwire(pp, PQ_ACTIVE);
}
