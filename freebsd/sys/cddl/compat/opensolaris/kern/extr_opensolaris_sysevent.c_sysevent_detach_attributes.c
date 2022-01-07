
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sysevent_t ;
struct sysevent {int * se_nvl; } ;


 int ASSERT (int ) ;

void
sysevent_detach_attributes(sysevent_t *evp)
{
 struct sysevent *ev = (struct sysevent *)evp;

 ASSERT(ev->se_nvl != ((void*)0));

 ev->se_nvl = ((void*)0);
}
