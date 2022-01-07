
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct TYPE_6__ {unsigned int len; int name; } ;
struct ieee802_1x_mka_participant {TYPE_3__ ckn; scalar_t__ mn; int mi; int can_be_key_server; int is_key_server; scalar_t__ is_elected; struct ieee802_1x_kay* kay; } ;
struct TYPE_4__ {int port; int addr; } ;
struct ieee802_1x_mka_basic_body {int ckn; int algo_agility; int actor_mn; int actor_mi; TYPE_1__ actor_sci; int macsec_capability; int macsec_desired; int key_server; int priority; int version; } ;
struct TYPE_5__ {int port; int addr; } ;
struct ieee802_1x_kay {int algo_agility; TYPE_2__ actor_sci; int macsec_capable; int macsec_desired; int actor_priority; int mka_version; } ;


 int MKA_ALIGN_LENGTH (unsigned int) ;
 scalar_t__ MKA_HDR_LEN ;
 int host_to_be32 (scalar_t__) ;
 int ieee802_1x_mka_dump_basic_body (struct ieee802_1x_mka_basic_body*) ;
 int os_memcpy (int ,int ,int) ;
 int set_mka_param_body_len (struct ieee802_1x_mka_basic_body*,scalar_t__) ;
 struct ieee802_1x_mka_basic_body* wpabuf_put (struct wpabuf*,int ) ;

__attribute__((used)) static int
ieee802_1x_mka_encode_basic_body(
 struct ieee802_1x_mka_participant *participant,
 struct wpabuf *buf)
{
 struct ieee802_1x_mka_basic_body *body;
 struct ieee802_1x_kay *kay = participant->kay;
 unsigned int length = sizeof(struct ieee802_1x_mka_basic_body);

 length += participant->ckn.len;
 body = wpabuf_put(buf, MKA_ALIGN_LENGTH(length));

 body->version = kay->mka_version;
 body->priority = kay->actor_priority;


 if (participant->is_elected)
  body->key_server = participant->is_key_server;
 else
  body->key_server = participant->can_be_key_server;

 body->macsec_desired = kay->macsec_desired;
 body->macsec_capability = kay->macsec_capable;
 set_mka_param_body_len(body, length - MKA_HDR_LEN);

 os_memcpy(body->actor_sci.addr, kay->actor_sci.addr,
    sizeof(kay->actor_sci.addr));
 body->actor_sci.port = kay->actor_sci.port;

 os_memcpy(body->actor_mi, participant->mi, sizeof(body->actor_mi));
 participant->mn = participant->mn + 1;
 body->actor_mn = host_to_be32(participant->mn);
 os_memcpy(body->algo_agility, kay->algo_agility,
    sizeof(body->algo_agility));

 os_memcpy(body->ckn, participant->ckn.name, participant->ckn.len);

 ieee802_1x_mka_dump_basic_body(body);

 return 0;
}
