
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sysevent_t ;
typedef int sysevent_attr_list_t ;
struct sysevent {int * se_nvl; } ;


 int ASSERT (int ) ;

int
sysevent_attach_attributes(sysevent_t *evp, sysevent_attr_list_t *ev_attr_list)
{
 struct sysevent *ev = (struct sysevent *)evp;

 ASSERT(ev->se_nvl == ((void*)0));

 ev->se_nvl = ev_attr_list;

 return (0);
}
