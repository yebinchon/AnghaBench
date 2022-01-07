
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct hostapd_data {int own_addr; int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* hapd_send_eapol ) (int ,int const*,int const*,size_t,int,int ,int ) ;} ;


 int stub1 (int ,int const*,int const*,size_t,int,int ,int ) ;

__attribute__((used)) static inline int hostapd_drv_hapd_send_eapol(struct hostapd_data *hapd,
           const u8 *addr, const u8 *data,
           size_t data_len, int encrypt,
           u32 flags)
{
 if (hapd->driver == ((void*)0) || hapd->driver->hapd_send_eapol == ((void*)0))
  return 0;
 return hapd->driver->hapd_send_eapol(hapd->drv_priv, addr, data,
          data_len, encrypt,
          hapd->own_addr, flags);
}
