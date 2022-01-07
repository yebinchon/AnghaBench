
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_4__ {int mi; int mn; } ;
struct ieee802_1x_mka_participant {void* active; scalar_t__ retry_count; TYPE_1__ current_peer_id; int mi; } ;
struct ieee802_1x_mka_hdr {int dummy; } ;
struct ieee802_1x_kay_peer {scalar_t__ missing_sak_use_count; scalar_t__ expire; scalar_t__ sak_used; } ;
struct ieee802_1x_kay {void* active; int if_name; } ;
struct ieee802_1x_hdr {int dummy; } ;
struct ieee8023_hdr {int dummy; } ;
struct TYPE_5__ {scalar_t__ (* body_rx ) (struct ieee802_1x_mka_participant*,size_t const*,size_t) ;} ;
typedef void* Boolean ;


 size_t ARRAY_SIZE (TYPE_2__*) ;
 size_t DEFAULT_ICV_LEN ;
 void* FALSE ;
 scalar_t__ MAX_MISSING_SAK_USE ;
 size_t MKA_ALIGN_LENGTH (int ) ;
 size_t MKA_DISTRIBUTED_SAK ;
 size_t MKA_HDR_LEN ;
 size_t MKA_ICV_INDICATOR ;
 int MKA_LIFE_TIME ;
 size_t MKA_SAK_USE ;
 int MKA_VERSION_ID ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 void* TRUE ;
 int be_to_host32 (int ) ;
 int get_mka_param_body_len (struct ieee802_1x_mka_hdr*) ;
 size_t get_mka_param_body_type (struct ieee802_1x_mka_hdr*) ;
 int ieee802_1x_kay_create_live_peer (struct ieee802_1x_mka_participant*,int ,int ) ;
 int ieee802_1x_kay_decide_macsec_use (struct ieee802_1x_mka_participant*) ;
 int ieee802_1x_kay_elect_key_server (struct ieee802_1x_mka_participant*) ;
 struct ieee802_1x_kay_peer* ieee802_1x_kay_get_live_peer (struct ieee802_1x_mka_participant*,int ) ;
 struct ieee802_1x_kay_peer* ieee802_1x_kay_get_peer (struct ieee802_1x_mka_participant*,int ) ;
 void* ieee802_1x_kay_is_in_live_peer (struct ieee802_1x_mka_participant*,int ) ;
 void* ieee802_1x_kay_is_in_potential_peer (struct ieee802_1x_mka_participant*,int ) ;
 scalar_t__ ieee802_1x_kay_mkpdu_sanity_check (struct ieee802_1x_kay*,size_t const*,size_t) ;
 int ieee802_1x_kay_move_live_peer (struct ieee802_1x_mka_participant*,int ,int ) ;
 struct ieee802_1x_mka_participant* ieee802_1x_mka_decode_basic_body (struct ieee802_1x_kay*,size_t const*,size_t) ;
 void* ieee802_1x_mka_i_in_peerlist (struct ieee802_1x_mka_participant*,size_t const*,size_t) ;
 int mi_txt (int ) ;
 TYPE_2__* mka_body_handler ;
 int reset_participant_mi (struct ieee802_1x_mka_participant*) ;
 scalar_t__ stub1 (struct ieee802_1x_mka_participant*,size_t const*,size_t) ;
 scalar_t__ time (int *) ;
 int wpa_printf (int ,char*,...) ;
 int yes_no (void*) ;

__attribute__((used)) static int ieee802_1x_kay_decode_mkpdu(struct ieee802_1x_kay *kay,
           const u8 *buf, size_t len)
{
 struct ieee802_1x_mka_participant *participant;
 struct ieee802_1x_mka_hdr *hdr;
 struct ieee802_1x_kay_peer *peer;
 size_t body_len;
 size_t left_len;
 u8 body_type;
 int i;
 const u8 *pos;
 Boolean handled[256];
 Boolean bad_sak_use = FALSE;

 Boolean i_in_peerlist, is_in_live_peer, is_in_potential_peer;

 wpa_printf(MSG_DEBUG, "KaY: Decode received MKPDU (ifname=%s)",
     kay->if_name);
 if (ieee802_1x_kay_mkpdu_sanity_check(kay, buf, len))
  return -1;


 pos = buf + sizeof(struct ieee8023_hdr) + sizeof(struct ieee802_1x_hdr);
 left_len = len - sizeof(struct ieee8023_hdr) -
  sizeof(struct ieee802_1x_hdr);
 participant = ieee802_1x_mka_decode_basic_body(kay, pos, left_len);
 if (!participant)
  return -1;


 hdr = (struct ieee802_1x_mka_hdr *) pos;
 body_len = MKA_ALIGN_LENGTH(get_mka_param_body_len(hdr));
 if (left_len < body_len + MKA_HDR_LEN)
  return -1;
 pos += body_len + MKA_HDR_LEN;
 left_len -= body_len + MKA_HDR_LEN;


 i_in_peerlist = ieee802_1x_mka_i_in_peerlist(participant, pos,
           left_len);
 is_in_live_peer = ieee802_1x_kay_is_in_live_peer(
  participant, participant->current_peer_id.mi);
 wpa_printf(MSG_DEBUG, "KaY: i_in_peerlist=%s is_in_live_peer=%s",
     yes_no(i_in_peerlist), yes_no(is_in_live_peer));
 if (i_in_peerlist && !is_in_live_peer) {

  is_in_potential_peer = ieee802_1x_kay_is_in_potential_peer(
   participant, participant->current_peer_id.mi);
  if (is_in_potential_peer) {
   if (!ieee802_1x_kay_move_live_peer(
        participant,
        participant->current_peer_id.mi,
        be_to_host32(participant->
       current_peer_id.mn)))
    return -1;
  } else if (!ieee802_1x_kay_create_live_peer(
       participant, participant->current_peer_id.mi,
       be_to_host32(participant->
      current_peer_id.mn))) {
    return -1;
  }

  ieee802_1x_kay_elect_key_server(participant);
  ieee802_1x_kay_decide_macsec_use(participant);
 }





 for (i = 0; i < 256; i++)
  handled[i] = FALSE;

 handled[0] = TRUE;
 for (; left_len > MKA_HDR_LEN + DEFAULT_ICV_LEN;
      pos += body_len + MKA_HDR_LEN,
       left_len -= body_len + MKA_HDR_LEN) {
  hdr = (struct ieee802_1x_mka_hdr *) pos;
  body_len = MKA_ALIGN_LENGTH(get_mka_param_body_len(hdr));
  body_type = get_mka_param_body_type(hdr);

  if (body_type == MKA_ICV_INDICATOR)
   return 0;

  if (left_len < (MKA_HDR_LEN + body_len + DEFAULT_ICV_LEN)) {
   wpa_printf(MSG_ERROR,
       "KaY: MKA Peer Packet Body Length (%zu bytes) is less than the Parameter Set Header Length (%zu bytes) + the Parameter Set Body Length (%zu bytes) + %d bytes of ICV",
       left_len, MKA_HDR_LEN,
       body_len, DEFAULT_ICV_LEN);
   return -1;
  }

  if (handled[body_type]) {
   wpa_printf(MSG_DEBUG,
       "KaY: Ignore duplicated body type %u",
       body_type);
   continue;
  }

  handled[body_type] = TRUE;
  if (body_type < ARRAY_SIZE(mka_body_handler) &&
      mka_body_handler[body_type].body_rx) {
   if (mka_body_handler[body_type].body_rx
    (participant, pos, left_len) != 0) {

    if (body_type != MKA_SAK_USE) {
     wpa_printf(MSG_INFO,
         "KaY: Discarding Rx MKPDU: decode of parameter set type (%d) failed",
         body_type);
     return -1;
    }
    bad_sak_use = TRUE;
   }
  } else {
   wpa_printf(MSG_ERROR,
       "KaY: The body type %d is not supported in this MKA version %d",
       body_type, MKA_VERSION_ID);
  }
 }

 if (bad_sak_use && !handled[MKA_DISTRIBUTED_SAK]) {
  wpa_printf(MSG_INFO,
      "KaY: Discarding Rx MKPDU: decode of parameter set type (%d) failed",
      MKA_SAK_USE);
  if (!reset_participant_mi(participant))
   wpa_printf(MSG_DEBUG, "KaY: Could not update mi");
  else
   wpa_printf(MSG_DEBUG,
       "KaY: Selected a new random MI: %s",
       mi_txt(participant->mi));
  return -1;
 }


 peer = ieee802_1x_kay_get_live_peer(participant,
         participant->current_peer_id.mi);
 if (peer) {

  if (!handled[MKA_SAK_USE]) {


   if (peer->sak_used) {
    wpa_printf(MSG_INFO,
        "KaY: Discarding Rx MKPDU: Live Peer stopped sending SAK-USE");
    return -1;
   }




   if (++peer->missing_sak_use_count >
       MAX_MISSING_SAK_USE) {
    wpa_printf(MSG_INFO,
        "KaY: Discarding Rx MKPDU: Live Peer not sending SAK-USE");
    return -1;
   }
  } else {
   peer->missing_sak_use_count = 0;



   peer->expire = time(((void*)0)) + MKA_LIFE_TIME / 1000;
  }
 } else {

  peer = ieee802_1x_kay_get_peer(participant,
            participant->current_peer_id.mi);
  if (!peer) {
   wpa_printf(MSG_DEBUG, "KaY: No peer entry found");
   return -1;
  }







 }

 kay->active = TRUE;
 participant->retry_count = 0;
 participant->active = TRUE;

 return 0;
}
