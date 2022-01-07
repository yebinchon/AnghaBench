
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct alpine_serdes_eth_group_mode {int lock; } ;


 struct alpine_serdes_eth_group_mode* alpine_serdes_eth_group_mode ;
 scalar_t__ mtx_initialized (int *) ;
 int mtx_lock (int *) ;

void
alpine_serdes_eth_group_lock(uint32_t group)
{
 struct alpine_serdes_eth_group_mode *group_mode;

 group_mode = &alpine_serdes_eth_group_mode[group];

 if (mtx_initialized(&group_mode->lock) == 0)
  return;

 mtx_lock(&group_mode->lock);
}
