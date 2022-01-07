
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wpa_supplicant {int * wps_er; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int,int ,int ) ;
 int wps_er_set_sel_reg (int *,int,int ,int ) ;

__attribute__((used)) static void wpas_wps_set_sel_reg_cb(void *ctx, int sel_reg, u16 dev_passwd_id,
        u16 sel_reg_config_methods)
{
}
