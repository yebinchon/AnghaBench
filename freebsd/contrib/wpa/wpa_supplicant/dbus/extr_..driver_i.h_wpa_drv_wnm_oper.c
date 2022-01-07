
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
typedef enum wnm_oper { ____Placeholder_wnm_oper } wnm_oper ;
struct TYPE_2__ {int (* wnm_oper ) (int ,int,int const*,int *,int *) ;} ;


 int stub1 (int ,int,int const*,int *,int *) ;

__attribute__((used)) static inline int wpa_drv_wnm_oper(struct wpa_supplicant *wpa_s,
       enum wnm_oper oper, const u8 *peer,
       u8 *buf, u16 *buf_len)
{
 if (!wpa_s->driver->wnm_oper)
  return -1;
 return wpa_s->driver->wnm_oper(wpa_s->drv_priv, oper, peer, buf,
           buf_len);
}
