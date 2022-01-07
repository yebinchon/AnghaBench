
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p2p_data {TYPE_1__* cfg; } ;
struct TYPE_2__ {int country; } ;


 int os_memcpy (int ,char const*,int) ;

int p2p_set_country(struct p2p_data *p2p, const char *country)
{
 os_memcpy(p2p->cfg->country, country, 3);
 return 0;
}
