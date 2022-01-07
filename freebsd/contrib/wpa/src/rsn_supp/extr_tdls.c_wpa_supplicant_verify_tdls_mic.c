
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int kck; } ;
struct wpa_tdls_peer {int rsnie_p; TYPE_1__ tpk; scalar_t__ tpk_set; } ;
struct wpa_tdls_ftie {int * mic; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_WARNING ;
 scalar_t__ os_memcmp_const (int *,int *,int) ;
 int wpa_hexdump (int ,char*,int *,int) ;
 int wpa_printf (int ,char*) ;
 int wpa_tdls_ftie_mic (int ,int ,int const*,int ,int const*,int *,int *) ;

__attribute__((used)) static int wpa_supplicant_verify_tdls_mic(u8 trans_seq,
       struct wpa_tdls_peer *peer,
       const u8 *lnkid, const u8 *timeoutie,
       const struct wpa_tdls_ftie *ftie)
{
 u8 mic[16];

 if (peer->tpk_set) {
  wpa_tdls_ftie_mic(peer->tpk.kck, trans_seq, lnkid,
      peer->rsnie_p, timeoutie, (u8 *) ftie,
      mic);
  if (os_memcmp_const(mic, ftie->mic, 16) != 0) {
   wpa_printf(MSG_INFO, "TDLS: Invalid MIC in FTIE - "
       "dropping packet");
   wpa_hexdump(MSG_DEBUG, "TDLS: Received MIC",
        ftie->mic, 16);
   wpa_hexdump(MSG_DEBUG, "TDLS: Calculated MIC",
        mic, 16);
   return -1;
  }
 } else {
  wpa_printf(MSG_WARNING, "TDLS: Could not verify TDLS MIC, "
      "TPK not set - dropping packet");
  return -1;
 }
 return 0;
}
