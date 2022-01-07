
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct TYPE_5__ {int detach_close; int self; int (* detach_user ) (struct ssh*,int ,int *) ;} ;
typedef TYPE_1__ Channel ;


 int chan_is_dead (struct ssh*,TYPE_1__*,int) ;
 int channel_free (struct ssh*,TYPE_1__*) ;
 int debug2 (char*,int ) ;
 int stub1 (struct ssh*,int ,int *) ;

__attribute__((used)) static void
channel_garbage_collect(struct ssh *ssh, Channel *c)
{
 if (c == ((void*)0))
  return;
 if (c->detach_user != ((void*)0)) {
  if (!chan_is_dead(ssh, c, c->detach_close))
   return;
  debug2("channel %d: gc: notify user", c->self);
  c->detach_user(ssh, c->self, ((void*)0));

  if (c->detach_user != ((void*)0))
   return;
  debug2("channel %d: gc: user detached", c->self);
 }
 if (!chan_is_dead(ssh, c, 1))
  return;
 debug2("channel %d: garbage collecting", c->self);
 channel_free(ssh, c);
}
