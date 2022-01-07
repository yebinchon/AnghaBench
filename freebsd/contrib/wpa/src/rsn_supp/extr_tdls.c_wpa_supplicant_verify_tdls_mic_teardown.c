
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int kck; } ;
struct wpa_tdls_peer {TYPE_1__ tpk; scalar_t__ tpk_set; } ;
struct wpa_tdls_ftie {int mic; } ;


 int MSG_INFO ;
 scalar_t__ os_memcmp_const (int *,int ,int) ;
 int wpa_printf (int ,char*) ;
 int wpa_tdls_key_mic_teardown (int ,int ,int ,int ,int const*,int *,int *) ;

__attribute__((used)) static int wpa_supplicant_verify_tdls_mic_teardown(
 u8 trans_seq, u16 rcode, u8 dtoken, struct wpa_tdls_peer *peer,
 const u8 *lnkid, const struct wpa_tdls_ftie *ftie)
{
 u8 mic[16];

 if (peer->tpk_set) {
  wpa_tdls_key_mic_teardown(peer->tpk.kck, trans_seq, rcode,
       dtoken, lnkid, (u8 *) ftie, mic);
  if (os_memcmp_const(mic, ftie->mic, 16) != 0) {
   wpa_printf(MSG_INFO, "TDLS: Invalid MIC in Teardown - "
       "dropping packet");
   return -1;
  }
 } else {
  wpa_printf(MSG_INFO, "TDLS: Could not verify TDLS Teardown "
      "MIC, TPK not set - dropping packet");
  return -1;
 }
 return 0;
}
