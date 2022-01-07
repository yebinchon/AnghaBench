
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee802_1x_mka_participant {int dummy; } ;
struct ieee802_1x_mka_hdr {int dummy; } ;


 int MSG_ERROR ;
 size_t get_mka_param_body_len (struct ieee802_1x_mka_hdr*) ;
 int wpa_printf (int ,char*,size_t) ;

__attribute__((used)) static int
ieee802_1x_mka_decode_kmd_body(
 struct ieee802_1x_mka_participant *participant,
 const u8 *mka_msg, size_t msg_len)
{
 struct ieee802_1x_mka_hdr *hdr;
 size_t body_len;

 hdr = (struct ieee802_1x_mka_hdr *) mka_msg;
 body_len = get_mka_param_body_len(hdr);
 if (body_len < 5) {
  wpa_printf(MSG_ERROR,
      "KaY: MKA Use KMD Packet Body Length (%zu bytes) should be 5 or more octets",
      body_len);
  return -1;
 }

 return 0;
}
