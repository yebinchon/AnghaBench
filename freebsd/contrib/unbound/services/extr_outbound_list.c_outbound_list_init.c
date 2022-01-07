
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct outbound_list {int * first; } ;



void
outbound_list_init(struct outbound_list* list)
{
 list->first = ((void*)0);
}
