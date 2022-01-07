
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct p2p_data {TYPE_1__* cfg; } ;
struct TYPE_2__ {int uuid; } ;


 int os_memcpy (int ,int const*,int) ;

void p2p_set_uuid(struct p2p_data *p2p, const u8 *uuid)
{
 os_memcpy(p2p->cfg->uuid, uuid, 16);
}
