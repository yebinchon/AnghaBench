
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sysevent_t ;
struct sysevent {int * se_nvl; } ;


 int ASSERT (int ) ;
 int kmem_free (struct sysevent*,int) ;
 int sysevent_free_attr (int *) ;

void
sysevent_free(sysevent_t *evp)
{
 struct sysevent *ev = (struct sysevent *)evp;

 ASSERT(evp != ((void*)0));

 if (ev->se_nvl != ((void*)0))
  sysevent_free_attr(ev->se_nvl);
 kmem_free(ev, sizeof(*ev));
}
