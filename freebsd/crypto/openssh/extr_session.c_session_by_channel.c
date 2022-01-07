
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int chanid; scalar_t__ used; } ;
typedef TYPE_1__ Session ;


 int debug (char*,int,...) ;
 int session_dump () ;
 TYPE_1__* sessions ;
 int sessions_nalloc ;

__attribute__((used)) static Session *
session_by_channel(int id)
{
 int i;
 for (i = 0; i < sessions_nalloc; i++) {
  Session *s = &sessions[i];
  if (s->used && s->chanid == id) {
   debug("session_by_channel: session %d channel %d",
       i, id);
   return s;
  }
 }
 debug("session_by_channel: unknown channel %d", id);
 session_dump();
 return ((void*)0);
}
