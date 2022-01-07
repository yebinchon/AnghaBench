
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_int ;
struct ssh_channels {size_t channels_alloc; TYPE_1__** channels; } ;
struct ssh {struct ssh_channels* chanctxt; } ;
struct TYPE_4__ {scalar_t__ type; int flags; scalar_t__ istate; scalar_t__ extended_usage; int self; } ;
typedef TYPE_1__ Channel ;


 int CHAN_CLOSE_RCVD ;
 int CHAN_CLOSE_SENT ;
 int CHAN_EOF_SENT ;
 scalar_t__ CHAN_EXTENDED_READ ;
 scalar_t__ CHAN_INPUT_OPEN ;
 scalar_t__ CHAN_INPUT_WAIT_DRAIN ;
 scalar_t__ SSH_CHANNEL_OPEN ;
 int channel_output_poll_extended_read (struct ssh*,TYPE_1__*) ;
 int channel_output_poll_input_open (struct ssh*,TYPE_1__*) ;
 int debug3 (char*,int ) ;

void
channel_output_poll(struct ssh *ssh)
{
 struct ssh_channels *sc = ssh->chanctxt;
 Channel *c;
 u_int i;

 for (i = 0; i < sc->channels_alloc; i++) {
  c = sc->channels[i];
  if (c == ((void*)0))
   continue;





  if (c->type != SSH_CHANNEL_OPEN)
   continue;
  if ((c->flags & (CHAN_CLOSE_SENT|CHAN_CLOSE_RCVD))) {

   debug3("channel %d: will not send data after close",
       c->self);
   continue;
  }


  if (c->istate == CHAN_INPUT_OPEN ||
      c->istate == CHAN_INPUT_WAIT_DRAIN)
   channel_output_poll_input_open(ssh, c);

  if (!(c->flags & CHAN_EOF_SENT) &&
      c->extended_usage == CHAN_EXTENDED_READ)
   channel_output_poll_extended_read(ssh, c);
 }
}
