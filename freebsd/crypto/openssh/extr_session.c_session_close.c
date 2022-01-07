
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u_int ;
struct ssh {int dummy; } ;
struct TYPE_9__ {struct TYPE_9__* val; struct TYPE_9__* name; } ;
struct TYPE_8__ {int ttyfd; size_t num_env; int self; TYPE_6__* env; TYPE_6__* subsys; TYPE_6__* auth_proto; TYPE_6__* auth_data; TYPE_6__* auth_display; TYPE_6__* x11_chanids; TYPE_6__* display; TYPE_6__* term; TYPE_1__* pw; } ;
struct TYPE_7__ {int pw_name; } ;
typedef TYPE_2__ Session ;


 int free (TYPE_6__*) ;
 int session_proctitle (TYPE_2__*) ;
 int session_pty_cleanup (TYPE_2__*) ;
 int session_unused (int ) ;
 int ssh_remote_ipaddr (struct ssh*) ;
 int ssh_remote_port (struct ssh*) ;
 int verbose (char*,int ,int ,int ,int ) ;

void
session_close(struct ssh *ssh, Session *s)
{
 u_int i;

 verbose("Close session: user %s from %.200s port %d id %d",
     s->pw->pw_name,
     ssh_remote_ipaddr(ssh),
     ssh_remote_port(ssh),
     s->self);

 if (s->ttyfd != -1)
  session_pty_cleanup(s);
 free(s->term);
 free(s->display);
 free(s->x11_chanids);
 free(s->auth_display);
 free(s->auth_data);
 free(s->auth_proto);
 free(s->subsys);
 if (s->env != ((void*)0)) {
  for (i = 0; i < s->num_env; i++) {
   free(s->env[i].name);
   free(s->env[i].val);
  }
  free(s->env);
 }
 session_proctitle(s);
 session_unused(s->self);
}
