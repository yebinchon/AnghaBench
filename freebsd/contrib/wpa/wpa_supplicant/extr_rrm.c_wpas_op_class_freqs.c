
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct oper_class_map {scalar_t__ bw; } ;
struct hostapd_hw_modes {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 scalar_t__ BW160 ;
 scalar_t__ BW80 ;
 scalar_t__ BW80P80 ;
 int* wpas_add_channels (struct oper_class_map const*,struct hostapd_hw_modes*,int,int*,int ) ;

__attribute__((used)) static int * wpas_op_class_freqs(const struct oper_class_map *op,
     struct hostapd_hw_modes *mode, int active)
{
 u8 channels_80mhz[] = { 42, 58, 106, 122, 138, 155 };
 u8 channels_160mhz[] = { 50, 114 };






 if (op->bw == BW80 || op->bw == BW80P80)
  return wpas_add_channels(op, mode, active, channels_80mhz,
      ARRAY_SIZE(channels_80mhz));

 if (op->bw == BW160)
  return wpas_add_channels(op, mode, active, channels_160mhz,
      ARRAY_SIZE(channels_160mhz));

 return wpas_add_channels(op, mode, active, ((void*)0), 0);
}
