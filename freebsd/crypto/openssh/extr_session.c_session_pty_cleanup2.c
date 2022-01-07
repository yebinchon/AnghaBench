
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ttyfd; scalar_t__ pid; int ptymaster; int tty; TYPE_1__* pw; int self; } ;
struct TYPE_4__ {int pw_name; } ;
typedef TYPE_2__ Session ;


 scalar_t__ close (int) ;
 int debug (char*,int ,int ) ;
 int errno ;
 int error (char*,...) ;
 scalar_t__ getuid () ;
 int pty_release (int ) ;
 int record_logout (scalar_t__,int ,int ) ;
 char* strerror (int ) ;

void
session_pty_cleanup2(Session *s)
{
 if (s == ((void*)0)) {
  error("session_pty_cleanup: no session");
  return;
 }
 if (s->ttyfd == -1)
  return;

 debug("session_pty_cleanup: session %d release %s", s->self, s->tty);


 if (s->pid != 0)
  record_logout(s->pid, s->tty, s->pw->pw_name);


 if (getuid() == 0)
  pty_release(s->tty);






 if (s->ptymaster != -1 && close(s->ptymaster) < 0)
  error("close(s->ptymaster/%d): %s",
      s->ptymaster, strerror(errno));


 s->ttyfd = -1;
}
