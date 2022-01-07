
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_changelist {scalar_t__ n_changes; scalar_t__ changes_size; int * changes; } ;



void
event_changelist_init_(struct event_changelist *changelist)
{
 changelist->changes = ((void*)0);
 changelist->changes_size = 0;
 changelist->n_changes = 0;
}
