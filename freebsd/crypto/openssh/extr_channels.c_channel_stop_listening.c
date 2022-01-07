
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_int ;
struct ssh {TYPE_1__* chanctxt; } ;
struct TYPE_5__ {int type; int sock; } ;
struct TYPE_4__ {size_t channels_alloc; TYPE_2__** channels; } ;
typedef TYPE_2__ Channel ;
 int channel_close_fd (struct ssh*,int *) ;
 int channel_free (struct ssh*,TYPE_2__*) ;

void
channel_stop_listening(struct ssh *ssh)
{
 u_int i;
 Channel *c;

 for (i = 0; i < ssh->chanctxt->channels_alloc; i++) {
  c = ssh->chanctxt->channels[i];
  if (c != ((void*)0)) {
   switch (c->type) {
   case 133:
   case 132:
   case 131:
   case 128:
   case 129:
   case 130:
    channel_close_fd(ssh, &c->sock);
    channel_free(ssh, c);
    break;
   }
  }
 }
}
