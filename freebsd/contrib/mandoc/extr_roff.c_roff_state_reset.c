
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int first; } ;
struct roff_man {int roff; int next; int lastnamed; int lastsec; scalar_t__ flags; int * last_es; TYPE_1__ meta; int last; } ;


 int ROFF_NEXT_CHILD ;
 int SEC_NONE ;
 int roff_setreg (int ,char*,int ,char) ;

void
roff_state_reset(struct roff_man *man)
{
 man->last = man->meta.first;
 man->last_es = ((void*)0);
 man->flags = 0;
 man->lastsec = man->lastnamed = SEC_NONE;
 man->next = ROFF_NEXT_CHILD;
 roff_setreg(man->roff, "nS", 0, '=');
}
