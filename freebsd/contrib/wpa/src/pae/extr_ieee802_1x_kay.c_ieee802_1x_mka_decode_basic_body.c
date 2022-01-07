
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ time_t ;
struct TYPE_5__ {int port; int addr; } ;
struct TYPE_4__ {int mn; int mi; } ;
struct ieee802_1x_mka_participant {TYPE_2__ current_peer_sci; TYPE_1__ current_peer_id; int mi; } ;
struct TYPE_6__ {int port; int addr; } ;
struct ieee802_1x_mka_basic_body {scalar_t__ version; int priority; scalar_t__ key_server; int macsec_capability; int macsec_desired; int actor_mn; int actor_mi; TYPE_3__ actor_sci; int ckn; } ;
struct ieee802_1x_kay_peer {scalar_t__ expire; scalar_t__ mn; int key_server_priority; void* is_key_server; int macsec_capability; int macsec_desired; } ;
struct ieee802_1x_kay {scalar_t__ is_obliged_key_server; } ;
typedef void* Boolean ;


 int MI_LEN ;
 int MKA_HDR_LEN ;
 double MKA_HELLO_TIME ;
 scalar_t__ MKA_VERSION_ID ;
 int MSG_DEBUG ;
 int MSG_WARNING ;
 scalar_t__ be_to_host32 (int ) ;
 size_t get_mka_param_body_len (struct ieee802_1x_mka_basic_body const*) ;
 struct ieee802_1x_kay_peer* ieee802_1x_kay_create_potential_peer (struct ieee802_1x_mka_participant*,int ,scalar_t__) ;
 struct ieee802_1x_mka_participant* ieee802_1x_kay_get_participant (struct ieee802_1x_kay*,int ,size_t) ;
 struct ieee802_1x_kay_peer* ieee802_1x_kay_get_peer (struct ieee802_1x_mka_participant*,int ) ;
 struct ieee802_1x_kay_peer* ieee802_1x_kay_get_peer_sci (struct ieee802_1x_mka_participant*,TYPE_3__*) ;
 int mi_txt (int ) ;
 scalar_t__ os_memcmp (int ,int ,int) ;
 int os_memcpy (int ,int ,int) ;
 int reset_participant_mi (struct ieee802_1x_mka_participant*) ;
 scalar_t__ time (int *) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static struct ieee802_1x_mka_participant *
ieee802_1x_mka_decode_basic_body(struct ieee802_1x_kay *kay, const u8 *mka_msg,
     size_t msg_len)
{
 struct ieee802_1x_mka_participant *participant;
 const struct ieee802_1x_mka_basic_body *body;
 struct ieee802_1x_kay_peer *peer;
 size_t ckn_len;
 size_t body_len;

 body = (const struct ieee802_1x_mka_basic_body *) mka_msg;

 if (body->version > MKA_VERSION_ID) {
  wpa_printf(MSG_DEBUG,
      "KaY: Peer's version(%d) greater than MKA current version(%d)",
      body->version, MKA_VERSION_ID);
 }
 if (kay->is_obliged_key_server && body->key_server) {
  wpa_printf(MSG_DEBUG, "KaY: I must be key server - ignore MKPDU claiming to be from a key server");
  return ((void*)0);
 }

 body_len = get_mka_param_body_len(body);
 if (body_len < sizeof(struct ieee802_1x_mka_basic_body) - MKA_HDR_LEN) {
  wpa_printf(MSG_DEBUG, "KaY: Too small body length %zu",
      body_len);
  return ((void*)0);
 }
 ckn_len = body_len -
     (sizeof(struct ieee802_1x_mka_basic_body) - MKA_HDR_LEN);
 participant = ieee802_1x_kay_get_participant(kay, body->ckn, ckn_len);
 if (!participant) {
  wpa_printf(MSG_DEBUG,
      "KaY: Peer is not included in my CA - ignore MKPDU");
  return ((void*)0);
 }


 if (os_memcmp(body->actor_mi, participant->mi, MI_LEN) == 0) {
  if (!reset_participant_mi(participant))
   return ((void*)0);
  wpa_printf(MSG_DEBUG,
      "KaY: Peer using my MI - selected a new random MI: %s",
      mi_txt(participant->mi));
 }

 os_memcpy(participant->current_peer_id.mi, body->actor_mi, MI_LEN);
 participant->current_peer_id.mn = body->actor_mn;
 os_memcpy(participant->current_peer_sci.addr, body->actor_sci.addr,
    sizeof(participant->current_peer_sci.addr));
 participant->current_peer_sci.port = body->actor_sci.port;


 peer = ieee802_1x_kay_get_peer(participant, body->actor_mi);
 if (!peer) {
  peer = ieee802_1x_kay_get_peer_sci(participant,
         &body->actor_sci);
  if (peer) {
   time_t new_expire;

   wpa_printf(MSG_WARNING,
       "KaY: duplicated SCI detected - maybe active attacker or peer selected new MI - ignore MKPDU");


   new_expire = time(((void*)0)) + MKA_HELLO_TIME * 1.5 / 1000;
   if (peer->expire > new_expire)
    peer->expire = new_expire;
   return ((void*)0);
  }

  peer = ieee802_1x_kay_create_potential_peer(
   participant, body->actor_mi,
   be_to_host32(body->actor_mn));
  if (!peer) {
   wpa_printf(MSG_DEBUG,
       "KaY: No potential peer entry found - ignore MKPDU");
   return ((void*)0);
  }

  peer->macsec_desired = body->macsec_desired;
  peer->macsec_capability = body->macsec_capability;
  peer->is_key_server = (Boolean) body->key_server;
  peer->key_server_priority = body->priority;
 } else if (peer->mn < be_to_host32(body->actor_mn)) {
  peer->mn = be_to_host32(body->actor_mn);
  peer->macsec_desired = body->macsec_desired;
  peer->macsec_capability = body->macsec_capability;
  peer->is_key_server = (Boolean) body->key_server;
  peer->key_server_priority = body->priority;
 } else {
  wpa_printf(MSG_WARNING,
      "KaY: The peer MN did not increase - ignore MKPDU");
  return ((void*)0);
 }

 return participant;
}
