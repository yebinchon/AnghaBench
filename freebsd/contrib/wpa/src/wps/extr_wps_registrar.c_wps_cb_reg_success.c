
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_registrar {int cb_ctx; int (* reg_success_cb ) (int ,int const*,int const*,int const*,size_t) ;} ;


 int stub1 (int ,int const*,int const*,int const*,size_t) ;

__attribute__((used)) static void wps_cb_reg_success(struct wps_registrar *reg, const u8 *mac_addr,
          const u8 *uuid_e, const u8 *dev_pw,
          size_t dev_pw_len)
{
 if (reg->reg_success_cb == ((void*)0))
  return;

 reg->reg_success_cb(reg->cb_ctx, mac_addr, uuid_e, dev_pw, dev_pw_len);
}
