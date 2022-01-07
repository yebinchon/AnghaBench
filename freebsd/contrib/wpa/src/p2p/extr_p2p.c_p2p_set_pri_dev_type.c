
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct p2p_data {TYPE_1__* cfg; } ;
struct TYPE_2__ {int pri_dev_type; } ;


 int os_memcpy (int ,int const*,int) ;

int p2p_set_pri_dev_type(struct p2p_data *p2p, const u8 *pri_dev_type)
{
 os_memcpy(p2p->cfg->pri_dev_type, pri_dev_type, 8);
 return 0;
}
