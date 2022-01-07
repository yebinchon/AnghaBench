
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {int own_addr; int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* send_action ) (int ,unsigned int,unsigned int,int const*,int ,int ,int const*,size_t,int ) ;} ;


 int stub1 (int ,unsigned int,unsigned int,int const*,int ,int ,int const*,size_t,int ) ;

int hostapd_drv_send_action_addr3_ap(struct hostapd_data *hapd,
         unsigned int freq,
         unsigned int wait, const u8 *dst,
         const u8 *data, size_t len)
{
 if (hapd->driver == ((void*)0) || hapd->driver->send_action == ((void*)0))
  return 0;
 return hapd->driver->send_action(hapd->drv_priv, freq, wait, dst,
      hapd->own_addr, hapd->own_addr, data,
      len, 0);
}
