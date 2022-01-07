
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct ieee802_1x_mka_peer_id {int mn; } ;
struct ieee802_1x_mka_participant {scalar_t__ mn; int mi; } ;
struct ieee802_1x_mka_hdr {int dummy; } ;


 int MI_LEN ;
 int MKA_HDR_LEN ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 scalar_t__ be_to_host32 (int ) ;
 size_t get_mka_param_body_len (struct ieee802_1x_mka_hdr const*) ;
 scalar_t__ os_memcmp (struct ieee802_1x_mka_peer_id const*,int ,int ) ;
 int reset_participant_mi (struct ieee802_1x_mka_participant*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int
ieee802_1x_mka_decode_potential_peer_body(
 struct ieee802_1x_mka_participant *participant,
 const u8 *peer_msg, size_t msg_len)
{
 const struct ieee802_1x_mka_hdr *hdr;
 size_t body_len;
 size_t i;

 hdr = (const struct ieee802_1x_mka_hdr *) peer_msg;
 body_len = get_mka_param_body_len(hdr);
 if (body_len % 16 != 0) {
  wpa_printf(MSG_ERROR,
      "KaY: MKA Peer Packet Body Length (%zu bytes) should be a multiple of 16 octets",
      body_len);
  return -1;
 }

 for (i = 0; i < body_len; i += sizeof(struct ieee802_1x_mka_peer_id)) {
  const struct ieee802_1x_mka_peer_id *peer_mi;
  u32 peer_mn;

  peer_mi = (struct ieee802_1x_mka_peer_id *)
   (peer_msg + MKA_HDR_LEN + i);
  peer_mn = be_to_host32(peer_mi->mn);


  if (os_memcmp(peer_mi, participant->mi, MI_LEN) == 0) {

   if (peer_mn > participant->mn &&
       !reset_participant_mi(participant))
    wpa_printf(MSG_DEBUG, "KaY: Could not update mi");
   continue;
  }
 }

 return 0;
}
