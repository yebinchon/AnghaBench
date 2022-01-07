
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p2p_data {TYPE_1__* cfg; } ;
struct TYPE_2__ {unsigned int passphrase_len; } ;



int p2p_set_passphrase_len(struct p2p_data *p2p, unsigned int len)
{
 if (len < 8 || len > 63)
  return -1;
 p2p->cfg->passphrase_len = len;
 return 0;
}
