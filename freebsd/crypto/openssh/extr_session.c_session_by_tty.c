
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ttyfd; int tty; scalar_t__ used; } ;
typedef TYPE_1__ Session ;


 int debug (char*,...) ;
 int session_dump () ;
 TYPE_1__* sessions ;
 int sessions_nalloc ;
 scalar_t__ strcmp (int ,char*) ;

Session *
session_by_tty(char *tty)
{
 int i;
 for (i = 0; i < sessions_nalloc; i++) {
  Session *s = &sessions[i];
  if (s->used && s->ttyfd != -1 && strcmp(s->tty, tty) == 0) {
   debug("session_by_tty: session %d tty %s", i, tty);
   return s;
  }
 }
 debug("session_by_tty: unknown tty %.100s", tty);
 session_dump();
 return ((void*)0);
}
