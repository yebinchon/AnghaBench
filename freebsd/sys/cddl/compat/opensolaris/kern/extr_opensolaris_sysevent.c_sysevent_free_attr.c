
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sysevent_attr_list_t ;


 int nvlist_free (int *) ;

void
sysevent_free_attr(sysevent_attr_list_t *ev_attr_list)
{

 nvlist_free(ev_attr_list);
}
