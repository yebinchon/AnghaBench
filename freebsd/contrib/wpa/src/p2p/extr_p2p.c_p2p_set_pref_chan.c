
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p2p_data {TYPE_1__* cfg; } ;
struct p2p_channel {int dummy; } ;
struct TYPE_2__ {unsigned int num_pref_chan; struct p2p_channel* pref_chan; } ;


 int os_free (struct p2p_channel*) ;
 struct p2p_channel* os_memdup (struct p2p_channel const*,unsigned int) ;

int p2p_set_pref_chan(struct p2p_data *p2p, unsigned int num_pref_chan,
        const struct p2p_channel *pref_chan)
{
 struct p2p_channel *n;

 if (pref_chan) {
  n = os_memdup(pref_chan,
         num_pref_chan * sizeof(struct p2p_channel));
  if (n == ((void*)0))
   return -1;
 } else
  n = ((void*)0);

 os_free(p2p->cfg->pref_chan);
 p2p->cfg->pref_chan = n;
 p2p->cfg->num_pref_chan = num_pref_chan;

 return 0;
}
