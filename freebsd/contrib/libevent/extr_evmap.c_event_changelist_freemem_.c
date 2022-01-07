
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_changelist {scalar_t__ changes; } ;


 int event_changelist_init_ (struct event_changelist*) ;
 int mm_free (scalar_t__) ;

void
event_changelist_freemem_(struct event_changelist *changelist)
{
 if (changelist->changes)
  mm_free(changelist->changes);
 event_changelist_init_(changelist);
}
