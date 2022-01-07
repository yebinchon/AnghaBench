
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
typedef enum tdls_oper { ____Placeholder_tdls_oper } tdls_oper ;
struct TYPE_2__ {int (* tdls_oper ) (int ,int,int const*) ;} ;


 int stub1 (int ,int,int const*) ;

__attribute__((used)) static inline int wpa_drv_tdls_oper(struct wpa_supplicant *wpa_s,
        enum tdls_oper oper, const u8 *peer)
{
 if (!wpa_s->driver->tdls_oper)
  return -1;
 return wpa_s->driver->tdls_oper(wpa_s->drv_priv, oper, peer);
}
