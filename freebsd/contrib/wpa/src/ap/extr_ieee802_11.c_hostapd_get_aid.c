
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sta_info {int aid; } ;
struct hostapd_data {int* sta_aid; } ;


 int AID_WORDS ;
 int BIT (int) ;
 int MSG_DEBUG ;
 scalar_t__ TEST_FAIL () ;
 int wpa_printf (int ,char*,int) ;

int hostapd_get_aid(struct hostapd_data *hapd, struct sta_info *sta)
{
 int i, j = 32, aid;


 if (sta->aid > 0) {
  wpa_printf(MSG_DEBUG, "  old AID %d", sta->aid);
  return 0;
 }

 if (TEST_FAIL())
  return -1;

 for (i = 0; i < AID_WORDS; i++) {
  if (hapd->sta_aid[i] == (u32) -1)
   continue;
  for (j = 0; j < 32; j++) {
   if (!(hapd->sta_aid[i] & BIT(j)))
    break;
  }
  if (j < 32)
   break;
 }
 if (j == 32)
  return -1;
 aid = i * 32 + j + 1;
 if (aid > 2007)
  return -1;

 sta->aid = aid;
 hapd->sta_aid[i] |= BIT(j);
 wpa_printf(MSG_DEBUG, "  new AID %d", sta->aid);
 return 0;
}
