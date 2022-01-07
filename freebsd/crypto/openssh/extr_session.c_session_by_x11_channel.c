
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* x11_chanids; int self; int used; } ;
typedef TYPE_1__ Session ;


 int debug (char*,int,...) ;
 int session_dump () ;
 TYPE_1__* sessions ;
 int sessions_nalloc ;

__attribute__((used)) static Session *
session_by_x11_channel(int id)
{
 int i, j;

 for (i = 0; i < sessions_nalloc; i++) {
  Session *s = &sessions[i];

  if (s->x11_chanids == ((void*)0) || !s->used)
   continue;
  for (j = 0; s->x11_chanids[j] != -1; j++) {
   if (s->x11_chanids[j] == id) {
    debug("session_by_x11_channel: session %d "
        "channel %d", s->self, id);
    return s;
   }
  }
 }
 debug("session_by_x11_channel: unknown channel %d", id);
 session_dump();
 return ((void*)0);
}
