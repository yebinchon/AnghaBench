
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct receive_sc {int dummy; } ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
typedef enum validate_frames { ____Placeholder_validate_frames } validate_frames ;
typedef enum confidentiality_offset { ____Placeholder_confidentiality_offset } confidentiality_offset ;
struct TYPE_2__ {int (* create_receive_sc ) (int ,struct receive_sc*,int ,int) ;} ;


 int conf_offset_val (int) ;
 int stub1 (int ,struct receive_sc*,int ,int) ;

__attribute__((used)) static int hapd_create_receive_sc(void *priv, struct receive_sc *sc,
      enum validate_frames vf,
      enum confidentiality_offset co)
{
 struct hostapd_data *hapd = priv;

 if (!hapd->driver->create_receive_sc)
  return -1;
 return hapd->driver->create_receive_sc(hapd->drv_priv, sc,
            conf_offset_val(co), vf);
}
