
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_registrar {int cb_ctx; int (* pin_needed_cb ) (int ,int const*,struct wps_device_data const*) ;} ;
struct wps_device_data {int dummy; } ;


 int stub1 (int ,int const*,struct wps_device_data const*) ;

__attribute__((used)) static void wps_cb_pin_needed(struct wps_registrar *reg, const u8 *uuid_e,
         const struct wps_device_data *dev)
{
 if (reg->pin_needed_cb == ((void*)0))
  return;

 reg->pin_needed_cb(reg->cb_ctx, uuid_e, dev);
}
