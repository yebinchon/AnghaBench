
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* ptr; } ;


 int CUSE_ALLOC_UNIT_MAX ;
 int CUSE_LOCK () ;
 int CUSE_UNLOCK () ;
 TYPE_1__* a_cuse ;
 scalar_t__ f_cuse ;

int
cuse_is_vmalloc_addr(void *ptr)
{
 int n;

 if (f_cuse < 0 || ptr == ((void*)0))
  return (0);

 CUSE_LOCK();
 for (n = 0; n != CUSE_ALLOC_UNIT_MAX; n++) {
  if (a_cuse[n].ptr == ptr)
   break;
 }
 CUSE_UNLOCK();

 return (n != CUSE_ALLOC_UNIT_MAX);
}
