
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct TYPE_7__ {int len; int key; } ;
struct ieee802_1x_mka_participant {TYPE_3__ kek; TYPE_2__* kay; struct data_key* new_key; } ;
struct ieee802_1x_mka_dist_sak_body {scalar_t__ sak; int kn; scalar_t__ dan; scalar_t__ confid_offset; int type; } ;
struct TYPE_5__ {int kn; } ;
struct data_key {int key; TYPE_1__ key_identifier; scalar_t__ an; scalar_t__ confidentiality_offset; } ;
typedef int be64 ;
struct TYPE_8__ {int sak_len; int id; } ;
struct TYPE_6__ {unsigned int macsec_csindex; } ;


 int CS_ID_LEN ;
 unsigned int CS_TABLE_SIZE ;
 unsigned int DEFAULT_CS_INDEX ;
 int MKA_DISTRIBUTED_SAK ;
 unsigned int MKA_HDR_LEN ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 scalar_t__ aes_wrap (int ,int ,int,int ,scalar_t__) ;
 TYPE_4__* cipher_suite_tbl ;
 int host_to_be32 (int ) ;
 int host_to_be64 (int ) ;
 int ieee802_1x_mka_dump_dist_sak_body (struct ieee802_1x_mka_dist_sak_body*) ;
 unsigned int ieee802_1x_mka_get_dist_sak_length (struct ieee802_1x_mka_participant*) ;
 int os_memcpy (scalar_t__,int *,int) ;
 int set_mka_param_body_len (struct ieee802_1x_mka_dist_sak_body*,unsigned int) ;
 int wpa_printf (int ,char*) ;
 struct ieee802_1x_mka_dist_sak_body* wpabuf_put (struct wpabuf*,unsigned int) ;

__attribute__((used)) static int
ieee802_1x_mka_encode_dist_sak_body(
 struct ieee802_1x_mka_participant *participant,
 struct wpabuf *buf)
{
 struct ieee802_1x_mka_dist_sak_body *body;
 struct data_key *sak;
 unsigned int length;
 unsigned int cs_index;
 int sak_pos;

 length = ieee802_1x_mka_get_dist_sak_length(participant);
 body = wpabuf_put(buf, length);
 body->type = MKA_DISTRIBUTED_SAK;
 set_mka_param_body_len(body, length - MKA_HDR_LEN);
 if (length == MKA_HDR_LEN) {
  body->confid_offset = 0;
  body->dan = 0;
  return 0;
 }

 sak = participant->new_key;
 if (!sak) {
  wpa_printf(MSG_DEBUG,
      "KaY: No SAK available to build Distributed SAK parameter set");
  return -1;
 }
 body->confid_offset = sak->confidentiality_offset;
 body->dan = sak->an;
 body->kn = host_to_be32(sak->key_identifier.kn);
 cs_index = participant->kay->macsec_csindex;
 sak_pos = 0;
 if (cs_index >= CS_TABLE_SIZE)
  return -1;
 if (cs_index != DEFAULT_CS_INDEX) {
  be64 cs;

  cs = host_to_be64(cipher_suite_tbl[cs_index].id);
  os_memcpy(body->sak, &cs, CS_ID_LEN);
  sak_pos = CS_ID_LEN;
 }
 if (aes_wrap(participant->kek.key, participant->kek.len,
       cipher_suite_tbl[cs_index].sak_len / 8,
       sak->key, body->sak + sak_pos)) {
  wpa_printf(MSG_ERROR, "KaY: AES wrap failed");
  return -1;
 }

 ieee802_1x_mka_dump_dist_sak_body(body);

 return 0;
}
