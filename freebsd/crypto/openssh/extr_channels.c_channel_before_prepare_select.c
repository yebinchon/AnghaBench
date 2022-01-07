
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct ssh_channels {size_t channels_alloc; TYPE_1__** channels; } ;
struct ssh {struct ssh_channels* chanctxt; } ;
struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ Channel ;


 scalar_t__ SSH_CHANNEL_RDYNAMIC_OPEN ;
 int channel_before_prepare_select_rdynamic (struct ssh*,TYPE_1__*) ;

__attribute__((used)) static void
channel_before_prepare_select(struct ssh *ssh)
{
 struct ssh_channels *sc = ssh->chanctxt;
 Channel *c;
 u_int i, oalloc;

 for (i = 0, oalloc = sc->channels_alloc; i < oalloc; i++) {
  c = sc->channels[i];
  if (c == ((void*)0))
   continue;
  if (c->type == SSH_CHANNEL_RDYNAMIC_OPEN)
   channel_before_prepare_select_rdynamic(ssh, c);
 }
}
