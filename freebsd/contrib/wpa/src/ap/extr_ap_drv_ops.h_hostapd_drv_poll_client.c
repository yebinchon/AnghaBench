
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* poll_client ) (int ,int const*,int const*,int) ;} ;


 int stub1 (int ,int const*,int const*,int) ;

__attribute__((used)) static inline void hostapd_drv_poll_client(struct hostapd_data *hapd,
        const u8 *own_addr, const u8 *addr,
        int qos)
{
 if (hapd->driver == ((void*)0) || hapd->driver->poll_client == ((void*)0))
  return;
 hapd->driver->poll_client(hapd->drv_priv, own_addr, addr, qos);
}
