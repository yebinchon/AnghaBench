
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct p2p_data {TYPE_1__* cfg; } ;
struct TYPE_2__ {int config_methods; } ;



void p2p_set_config_methods(struct p2p_data *p2p, u16 config_methods)
{
 p2p->cfg->config_methods = config_methods;
}
