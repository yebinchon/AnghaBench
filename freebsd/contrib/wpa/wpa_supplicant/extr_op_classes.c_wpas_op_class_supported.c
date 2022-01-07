
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int num_modes; int modes; } ;
struct wpa_supplicant {TYPE_1__ hw; } ;
struct wpa_ssid {int* freq_list; scalar_t__ disable_vht; scalar_t__ disable_ht; } ;
struct oper_class_map {int op_class; int min_chan; int max_chan; int bw; scalar_t__ inc; int mode; } ;
struct hostapd_hw_modes {int dummy; } ;


 size_t ARRAY_SIZE (int*) ;
 scalar_t__ NOT_ALLOWED ;
 struct hostapd_hw_modes* get_mode (int ,int ,int ) ;
 scalar_t__ verify_channel (struct hostapd_hw_modes*,int,int ) ;

__attribute__((used)) static int wpas_op_class_supported(struct wpa_supplicant *wpa_s,
       struct wpa_ssid *ssid,
       const struct oper_class_map *op_class)
{
 int chan;
 size_t i;
 struct hostapd_hw_modes *mode;
 int found;
 int z;
 int freq2 = 0;
 int freq5 = 0;

 mode = get_mode(wpa_s->hw.modes, wpa_s->hw.num_modes, op_class->mode);
 if (!mode)
  return 0;



 if (ssid->freq_list && ssid->freq_list[0]) {
  for (z = 0; ; z++) {
   int f = ssid->freq_list[z];

   if (f == 0)
    break;
   if (f > 4000 && f < 6000)
    freq5 = 1;
   else if (f > 2400 && f < 2500)
    freq2 = 1;
  }
 } else {


  freq2 = freq5 = 1;
 }

 if (op_class->op_class >= 115 && op_class->op_class <= 130 && !freq5)
  return 0;
 if (op_class->op_class >= 81 && op_class->op_class <= 84 && !freq2)
  return 0;
 if (op_class->op_class == 128) {
  u8 channels[] = { 42, 58, 106, 122, 138, 155 };

  for (i = 0; i < ARRAY_SIZE(channels); i++) {
   if (verify_channel(mode, channels[i], op_class->bw) !=
       NOT_ALLOWED)
    return 1;
  }

  return 0;
 }

 if (op_class->op_class == 129) {

  return verify_channel(mode, 50, op_class->bw) != NOT_ALLOWED ||
   verify_channel(mode, 114, op_class->bw) != NOT_ALLOWED;
 }

 if (op_class->op_class == 130) {

  found = 0;

  if (verify_channel(mode, 42, op_class->bw) != NOT_ALLOWED ||
      verify_channel(mode, 58, op_class->bw) != NOT_ALLOWED)
   found++;
  if (verify_channel(mode, 106, op_class->bw) != NOT_ALLOWED ||
      verify_channel(mode, 122, op_class->bw) != NOT_ALLOWED ||
      verify_channel(mode, 138, op_class->bw) != NOT_ALLOWED)
   found++;
  if (verify_channel(mode, 106, op_class->bw) != NOT_ALLOWED &&
      verify_channel(mode, 138, op_class->bw) != NOT_ALLOWED)
   found++;
  if (verify_channel(mode, 155, op_class->bw) != NOT_ALLOWED)
   found++;

  if (found >= 2)
   return 1;

  return 0;
 }

 found = 0;
 for (chan = op_class->min_chan; chan <= op_class->max_chan;
      chan += op_class->inc) {
  if (verify_channel(mode, chan, op_class->bw) != NOT_ALLOWED) {
   found = 1;
   break;
  }
 }

 return found;
}
