
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pid; int chanid; int self; int next_unused; int used; } ;
typedef TYPE_1__ Session ;


 int debug (char*,int ,int ,int ,TYPE_1__*,int ,long) ;
 TYPE_1__* sessions ;
 int sessions_nalloc ;

__attribute__((used)) static void
session_dump(void)
{
 int i;
 for (i = 0; i < sessions_nalloc; i++) {
  Session *s = &sessions[i];

  debug("dump: used %d next_unused %d session %d %p "
      "channel %d pid %ld",
      s->used,
      s->next_unused,
      s->self,
      s,
      s->chanid,
      (long)s->pid);
 }
}
