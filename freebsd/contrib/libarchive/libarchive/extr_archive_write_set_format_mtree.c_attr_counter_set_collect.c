
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct att_counter_set {struct attr_counter* flags_list; struct attr_counter* mode_list; struct attr_counter* gid_list; struct attr_counter* uid_list; } ;
struct mtree_writer {int keys; struct att_counter_set acs; } ;
struct mtree_entry {scalar_t__ uid; scalar_t__ gid; scalar_t__ mode; scalar_t__ fflags_set; scalar_t__ fflags_clear; } ;
struct attr_counter {TYPE_1__* m_entry; struct attr_counter* next; } ;
struct TYPE_2__ {scalar_t__ uid; scalar_t__ gid; scalar_t__ mode; scalar_t__ fflags_set; scalar_t__ fflags_clear; } ;


 int F_FLAGS ;
 int F_GID ;
 int F_GNAME ;
 int F_MODE ;
 int F_UID ;
 int F_UNAME ;
 scalar_t__ attr_counter_inc (struct attr_counter**,struct attr_counter*,struct attr_counter*,struct mtree_entry*) ;
 void* attr_counter_new (struct mtree_entry*,int *) ;

__attribute__((used)) static int
attr_counter_set_collect(struct mtree_writer *mtree, struct mtree_entry *me)
{
 struct attr_counter *ac, *last;
 struct att_counter_set *acs = &mtree->acs;
 int keys = mtree->keys;

 if (keys & (F_UNAME | F_UID)) {
  if (acs->uid_list == ((void*)0)) {
   acs->uid_list = attr_counter_new(me, ((void*)0));
   if (acs->uid_list == ((void*)0))
    return (-1);
  } else {
   last = ((void*)0);
   for (ac = acs->uid_list; ac; ac = ac->next) {
    if (ac->m_entry->uid == me->uid)
     break;
    last = ac;
   }
   if (attr_counter_inc(&acs->uid_list, ac, last, me) < 0)
    return (-1);
  }
 }
 if (keys & (F_GNAME | F_GID)) {
  if (acs->gid_list == ((void*)0)) {
   acs->gid_list = attr_counter_new(me, ((void*)0));
   if (acs->gid_list == ((void*)0))
    return (-1);
  } else {
   last = ((void*)0);
   for (ac = acs->gid_list; ac; ac = ac->next) {
    if (ac->m_entry->gid == me->gid)
     break;
    last = ac;
   }
   if (attr_counter_inc(&acs->gid_list, ac, last, me) < 0)
    return (-1);
  }
 }
 if (keys & F_MODE) {
  if (acs->mode_list == ((void*)0)) {
   acs->mode_list = attr_counter_new(me, ((void*)0));
   if (acs->mode_list == ((void*)0))
    return (-1);
  } else {
   last = ((void*)0);
   for (ac = acs->mode_list; ac; ac = ac->next) {
    if (ac->m_entry->mode == me->mode)
     break;
    last = ac;
   }
   if (attr_counter_inc(&acs->mode_list, ac, last, me) < 0)
    return (-1);
  }
 }
 if (keys & F_FLAGS) {
  if (acs->flags_list == ((void*)0)) {
   acs->flags_list = attr_counter_new(me, ((void*)0));
   if (acs->flags_list == ((void*)0))
    return (-1);
  } else {
   last = ((void*)0);
   for (ac = acs->flags_list; ac; ac = ac->next) {
    if (ac->m_entry->fflags_set == me->fflags_set &&
        ac->m_entry->fflags_clear ==
       me->fflags_clear)
     break;
    last = ac;
   }
   if (attr_counter_inc(&acs->flags_list, ac, last, me) < 0)
    return (-1);
  }
 }

 return (0);
}
