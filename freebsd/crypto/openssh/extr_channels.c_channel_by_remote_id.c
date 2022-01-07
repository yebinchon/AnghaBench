
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_int ;
struct ssh {TYPE_1__* chanctxt; } ;
struct TYPE_5__ {size_t remote_id; scalar_t__ have_remote_id; } ;
struct TYPE_4__ {size_t channels_alloc; TYPE_2__** channels; } ;
typedef TYPE_2__ Channel ;



Channel *
channel_by_remote_id(struct ssh *ssh, u_int remote_id)
{
 Channel *c;
 u_int i;

 for (i = 0; i < ssh->chanctxt->channels_alloc; i++) {
  c = ssh->chanctxt->channels[i];
  if (c != ((void*)0) && c->have_remote_id && c->remote_id == remote_id)
   return c;
 }
 return ((void*)0);
}
