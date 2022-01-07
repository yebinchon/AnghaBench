
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct wps_registrar {scalar_t__ sel_reg_dev_password_id_override; TYPE_1__* wps; int dualband; int sel_reg_union; scalar_t__ pbc; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int uuid; } ;


 scalar_t__ DEV_PW_DEFAULT ;
 scalar_t__ DEV_PW_PUSHBUTTON ;
 int wps_build_uuid_e (struct wpabuf*,int ) ;

__attribute__((used)) static int wps_build_sel_pbc_reg_uuid_e(struct wps_registrar *reg,
     struct wpabuf *msg)
{
 u16 id = reg->pbc ? DEV_PW_PUSHBUTTON : DEV_PW_DEFAULT;
 if (!reg->sel_reg_union)
  return 0;
 if (reg->sel_reg_dev_password_id_override >= 0)
  id = reg->sel_reg_dev_password_id_override;
 if (id != DEV_PW_PUSHBUTTON || !reg->dualband)
  return 0;
 return wps_build_uuid_e(msg, reg->wps->uuid);
}
