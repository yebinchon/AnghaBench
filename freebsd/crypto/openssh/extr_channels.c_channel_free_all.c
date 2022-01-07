
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct ssh {TYPE_1__* chanctxt; } ;
struct TYPE_2__ {size_t channels_alloc; int ** channels; } ;


 int channel_free (struct ssh*,int *) ;

void
channel_free_all(struct ssh *ssh)
{
 u_int i;

 for (i = 0; i < ssh->chanctxt->channels_alloc; i++)
  if (ssh->chanctxt->channels[i] != ((void*)0))
   channel_free(ssh, ssh->chanctxt->channels[i]);
}
