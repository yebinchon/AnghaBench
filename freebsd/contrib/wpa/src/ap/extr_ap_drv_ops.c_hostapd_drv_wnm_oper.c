
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
typedef enum wnm_oper { ____Placeholder_wnm_oper } wnm_oper ;
struct TYPE_2__ {int (* wnm_oper ) (int ,int,int const*,int *,int *) ;} ;


 int stub1 (int ,int,int const*,int *,int *) ;

int hostapd_drv_wnm_oper(struct hostapd_data *hapd, enum wnm_oper oper,
    const u8 *peer, u8 *buf, u16 *buf_len)
{
 if (hapd->driver == ((void*)0) || hapd->driver->wnm_oper == ((void*)0))
  return -1;
 return hapd->driver->wnm_oper(hapd->drv_priv, oper, peer, buf,
          buf_len);
}
