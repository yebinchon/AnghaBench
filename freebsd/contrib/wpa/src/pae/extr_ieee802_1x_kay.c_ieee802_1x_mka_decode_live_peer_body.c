
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct ieee802_1x_mka_peer_id {int mi; int mn; } ;
struct TYPE_2__ {int mi; } ;
struct ieee802_1x_mka_participant {scalar_t__ mn; int mi; TYPE_1__ current_peer_id; } ;
struct ieee802_1x_mka_hdr {int dummy; } ;
struct ieee802_1x_kay_peer {scalar_t__ mn; } ;
typedef int Boolean ;


 int MI_LEN ;
 int MKA_HDR_LEN ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 scalar_t__ be_to_host32 (int ) ;
 size_t get_mka_param_body_len (struct ieee802_1x_mka_hdr const*) ;
 int ieee802_1x_kay_create_potential_peer (struct ieee802_1x_mka_participant*,int ,scalar_t__) ;
 struct ieee802_1x_kay_peer* ieee802_1x_kay_get_peer (struct ieee802_1x_mka_participant*,int ) ;
 int ieee802_1x_kay_is_in_live_peer (struct ieee802_1x_mka_participant*,int ) ;
 scalar_t__ os_memcmp (struct ieee802_1x_mka_peer_id const*,int ,int ) ;
 int reset_participant_mi (struct ieee802_1x_mka_participant*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int ieee802_1x_mka_decode_live_peer_body(
 struct ieee802_1x_mka_participant *participant,
 const u8 *peer_msg, size_t msg_len)
{
 const struct ieee802_1x_mka_hdr *hdr;
 struct ieee802_1x_kay_peer *peer;
 size_t body_len;
 size_t i;
 Boolean is_included;

 is_included = ieee802_1x_kay_is_in_live_peer(
  participant, participant->current_peer_id.mi);

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

  peer_mi = (const struct ieee802_1x_mka_peer_id *)
   (peer_msg + MKA_HDR_LEN + i);
  peer_mn = be_to_host32(peer_mi->mn);


  if (os_memcmp(peer_mi, participant->mi, MI_LEN) == 0) {

   if (peer_mn > participant->mn &&
       !reset_participant_mi(participant))
    wpa_printf(MSG_DEBUG, "KaY: Could not update mi");
   continue;
  }

  if (!is_included)
   continue;

  peer = ieee802_1x_kay_get_peer(participant, peer_mi->mi);
  if (peer) {
   peer->mn = peer_mn;
  } else if (!ieee802_1x_kay_create_potential_peer(
    participant, peer_mi->mi, peer_mn)) {
   return -1;
  }
 }

 return 0;
}
