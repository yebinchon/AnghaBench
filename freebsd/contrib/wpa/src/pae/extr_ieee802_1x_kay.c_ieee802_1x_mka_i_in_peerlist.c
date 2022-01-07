
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct ieee802_1x_mka_peer_id {int mn; int mi; } ;
struct ieee802_1x_mka_peer_body {int dummy; } ;
struct ieee802_1x_mka_participant {int mn; int mi; } ;
struct ieee802_1x_mka_hdr {int dummy; } ;
typedef int Boolean ;


 size_t DEFAULT_ICV_LEN ;
 int FALSE ;
 int MI_LEN ;
 size_t MKA_ALIGN_LENGTH (size_t) ;
 size_t MKA_HDR_LEN ;
 scalar_t__ MKA_LIVE_PEER_LIST ;
 scalar_t__ MKA_POTENTIAL_PEER_LIST ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int TRUE ;
 int be_to_host32 (int ) ;
 size_t get_mka_param_body_len (struct ieee802_1x_mka_hdr*) ;
 scalar_t__ get_mka_param_body_type (struct ieee802_1x_mka_hdr*) ;
 int ieee802_1x_mka_dump_peer_body (struct ieee802_1x_mka_peer_body*) ;
 scalar_t__ os_memcmp (int ,int ,int ) ;
 int wpa_printf (int ,char*,int,...) ;

__attribute__((used)) static Boolean
ieee802_1x_mka_i_in_peerlist(struct ieee802_1x_mka_participant *participant,
        const u8 *mka_msg, size_t msg_len)
{
 struct ieee802_1x_mka_hdr *hdr;
 size_t body_len;
 size_t left_len;
 u8 body_type;
 const u8 *pos;
 size_t i;

 for (pos = mka_msg, left_len = msg_len;
      left_len > MKA_HDR_LEN + DEFAULT_ICV_LEN;
      left_len -= MKA_ALIGN_LENGTH(body_len) + MKA_HDR_LEN,
       pos += MKA_ALIGN_LENGTH(body_len) + MKA_HDR_LEN) {
  hdr = (struct ieee802_1x_mka_hdr *) pos;
  body_len = get_mka_param_body_len(hdr);
  body_type = get_mka_param_body_type(hdr);

  if (left_len < (MKA_HDR_LEN + MKA_ALIGN_LENGTH(body_len) + DEFAULT_ICV_LEN)) {
   wpa_printf(MSG_ERROR,
       "KaY: MKA Peer Packet Body Length (%zu bytes) is less than the Parameter Set Header Length (%zu bytes) + the Parameter Set Body Length (%zu bytes) + %d bytes of ICV",
       left_len, MKA_HDR_LEN,
       MKA_ALIGN_LENGTH(body_len),
       DEFAULT_ICV_LEN);
   return FALSE;
  }

  if (body_type != MKA_LIVE_PEER_LIST &&
      body_type != MKA_POTENTIAL_PEER_LIST)
   continue;

  if ((body_len % 16) != 0) {
   wpa_printf(MSG_ERROR,
       "KaY: MKA Peer Packet Body Length (%zu bytes) should be a multiple of 16 octets",
       body_len);
   continue;
  }

  ieee802_1x_mka_dump_peer_body(
   (struct ieee802_1x_mka_peer_body *)pos);

  for (i = 0; i < body_len;
       i += sizeof(struct ieee802_1x_mka_peer_id)) {
   const struct ieee802_1x_mka_peer_id *peer_mi;

   peer_mi = (const struct ieee802_1x_mka_peer_id *)
    (pos + MKA_HDR_LEN + i);
   if (os_memcmp(peer_mi->mi, participant->mi,
          MI_LEN) == 0) {
    u32 mn = be_to_host32(peer_mi->mn);

    wpa_printf(MSG_DEBUG,
        "KaY: My MI - received MN %u, most recently transmitted MN %u",
        mn, participant->mn);
    if (mn == participant->mn ||
        (participant->mn > 1 &&
         mn == participant->mn - 1))
     return TRUE;
   }
  }
 }

 return FALSE;
}
