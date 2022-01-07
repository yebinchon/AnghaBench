
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct TYPE_3__ {int chanid; int self; } ;
typedef TYPE_1__ Session ;


 int CHAN_EXTENDED_IGNORE ;
 int CHAN_EXTENDED_READ ;
 int CHAN_SES_WINDOW_DEFAULT ;
 int channel_set_fds (struct ssh*,int,int,int,int,int ,int,int,int ) ;
 int fatal (char*,int ) ;

void
session_set_fds(struct ssh *ssh, Session *s,
    int fdin, int fdout, int fderr, int ignore_fderr, int is_tty)
{




 if (s->chanid == -1)
  fatal("no channel for session %d", s->self);
 channel_set_fds(ssh, s->chanid,
     fdout, fdin, fderr,
     ignore_fderr ? CHAN_EXTENDED_IGNORE : CHAN_EXTENDED_READ,
     1, is_tty, CHAN_SES_WINDOW_DEFAULT);
}
