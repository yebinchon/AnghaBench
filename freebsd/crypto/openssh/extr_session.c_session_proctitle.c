
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pw; int self; } ;
struct TYPE_4__ {int pw_name; } ;
typedef TYPE_2__ Session ;


 int error (char*,int ) ;
 int session_tty_list () ;
 int setproctitle (char*,int ,int ) ;

void
session_proctitle(Session *s)
{
 if (s->pw == ((void*)0))
  error("no user for session %d", s->self);
 else
  setproctitle("%s@%s", s->pw->pw_name, session_tty_list());
}
