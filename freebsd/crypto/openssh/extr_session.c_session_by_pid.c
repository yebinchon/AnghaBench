
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_4__ {scalar_t__ pid; scalar_t__ used; } ;
typedef TYPE_1__ Session ;


 int debug (char*,long) ;
 int error (char*,long) ;
 int session_dump () ;
 TYPE_1__* sessions ;
 int sessions_nalloc ;

__attribute__((used)) static Session *
session_by_pid(pid_t pid)
{
 int i;
 debug("session_by_pid: pid %ld", (long)pid);
 for (i = 0; i < sessions_nalloc; i++) {
  Session *s = &sessions[i];
  if (s->used && s->pid == pid)
   return s;
 }
 error("session_by_pid: unknown pid %ld", (long)pid);
 session_dump();
 return ((void*)0);
}
