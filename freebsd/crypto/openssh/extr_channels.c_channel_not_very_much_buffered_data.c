
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct ssh {TYPE_1__* chanctxt; } ;
struct TYPE_4__ {scalar_t__ type; int output; int self; } ;
struct TYPE_3__ {size_t channels_alloc; TYPE_2__** channels; } ;
typedef TYPE_2__ Channel ;


 scalar_t__ SSH_CHANNEL_OPEN ;
 int debug2 (char*,int ,size_t,size_t) ;
 size_t ssh_packet_get_maxsize (struct ssh*) ;
 size_t sshbuf_len (int ) ;

int
channel_not_very_much_buffered_data(struct ssh *ssh)
{
 u_int i;
 u_int maxsize = ssh_packet_get_maxsize(ssh);
 Channel *c;

 for (i = 0; i < ssh->chanctxt->channels_alloc; i++) {
  c = ssh->chanctxt->channels[i];
  if (c == ((void*)0) || c->type != SSH_CHANNEL_OPEN)
   continue;
  if (sshbuf_len(c->output) > maxsize) {
   debug2("channel %d: big output buffer %zu > %u",
       c->self, sshbuf_len(c->output), maxsize);
   return 0;
  }
 }
 return 1;
}
