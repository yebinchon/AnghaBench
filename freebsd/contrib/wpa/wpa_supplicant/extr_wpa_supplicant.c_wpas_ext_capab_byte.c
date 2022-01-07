
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int drv_flags; int disable_fils; TYPE_1__* conf; } ;
struct TYPE_2__ {int ftm_initiator; int ftm_responder; int hs20; int interworking; int disable_btm; int coloc_intf_reporting; } ;


 int WPA_DRIVER_FLAGS_QOS_MAPPING ;

__attribute__((used)) static void wpas_ext_capab_byte(struct wpa_supplicant *wpa_s, u8 *pos, int idx)
{
 *pos = 0x00;

 switch (idx) {
 case 0:
  break;
 case 1:
  if (wpa_s->conf->coloc_intf_reporting) {

   *pos |= 0x20;
  }
  break;
 case 2:





  break;
 case 3:







  break;
 case 4:




  break;
 case 5:







  break;
 case 6:
  break;
 case 7:
  break;
 case 8:
  if (wpa_s->conf->ftm_responder)
   *pos |= 0x40;
  if (wpa_s->conf->ftm_initiator)
   *pos |= 0x80;
  break;
 case 9:




  break;
 }
}
