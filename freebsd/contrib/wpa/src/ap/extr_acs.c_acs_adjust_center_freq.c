
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hostapd_iface {TYPE_1__* conf; } ;
struct TYPE_3__ {int secondary_channel; scalar_t__ channel; } ;





 int MSG_DEBUG ;
 int MSG_INFO ;
 int hostapd_get_oper_chwidth (TYPE_1__*) ;
 int hostapd_set_oper_centr_freq_seg0_idx (TYPE_1__*,scalar_t__) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void acs_adjust_center_freq(struct hostapd_iface *iface)
{
 int offset;

 wpa_printf(MSG_DEBUG, "ACS: Adjusting VHT center frequency");

 switch (hostapd_get_oper_chwidth(iface->conf)) {
 case 128:
  offset = 2 * iface->conf->secondary_channel;
  break;
 case 129:
  offset = 6;
  break;
 case 130:
  offset = 14;
  break;
 default:


  wpa_printf(MSG_INFO,
      "ACS: Only VHT20/40/80/160 is supported now");
  return;
 }

 hostapd_set_oper_centr_freq_seg0_idx(iface->conf,
          iface->conf->channel + offset);
}
