
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct transmit_sc {int dummy; } ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
typedef enum confidentiality_offset { ____Placeholder_confidentiality_offset } confidentiality_offset ;
struct TYPE_2__ {int (* create_transmit_sc ) (int ,struct transmit_sc*,int ) ;} ;


 int conf_offset_val (int) ;
 int stub1 (int ,struct transmit_sc*,int ) ;

__attribute__((used)) static int
hapd_create_transmit_sc(void *priv, struct transmit_sc *sc,
   enum confidentiality_offset co)
{
 struct hostapd_data *hapd = priv;

 if (!hapd->driver->create_transmit_sc)
  return -1;
 return hapd->driver->create_transmit_sc(hapd->drv_priv, sc,
      conf_offset_val(co));
}
