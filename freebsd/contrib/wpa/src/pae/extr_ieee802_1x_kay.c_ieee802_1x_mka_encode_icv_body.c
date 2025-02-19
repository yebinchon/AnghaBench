
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_5__ {int len; int key; } ;
struct ieee802_1x_mka_participant {TYPE_2__ ick; TYPE_1__* kay; } ;
struct ieee802_1x_mka_icv_body {int type; } ;
struct TYPE_6__ {scalar_t__ icv_len; scalar_t__ (* icv_hash ) (int ,int ,int ,int ,int *) ;} ;
struct TYPE_4__ {size_t mka_algindex; } ;


 scalar_t__ DEFAULT_ICV_LEN ;
 int MAX_ICV_LEN ;
 unsigned int MKA_HDR_LEN ;
 int MKA_ICV_INDICATOR ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 unsigned int ieee802_1x_mka_get_icv_length (struct ieee802_1x_mka_participant*) ;
 TYPE_3__* mka_alg_tbl ;
 int os_memcpy (struct ieee802_1x_mka_icv_body*,int *,unsigned int) ;
 int set_mka_param_body_len (struct ieee802_1x_mka_icv_body*,unsigned int) ;
 scalar_t__ stub1 (int ,int ,int ,int ,int *) ;
 int wpa_hexdump (int ,char*,int *,unsigned int) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 struct ieee802_1x_mka_icv_body* wpabuf_put (struct wpabuf*,unsigned int) ;

__attribute__((used)) static int
ieee802_1x_mka_encode_icv_body(struct ieee802_1x_mka_participant *participant,
          struct wpabuf *buf)
{
 struct ieee802_1x_mka_icv_body *body;
 unsigned int length;
 u8 cmac[MAX_ICV_LEN];

 length = ieee802_1x_mka_get_icv_length(participant);
 if (mka_alg_tbl[participant->kay->mka_algindex].icv_len !=
     DEFAULT_ICV_LEN) {
  wpa_printf(MSG_DEBUG, "KaY: ICV Indicator");
  body = wpabuf_put(buf, MKA_HDR_LEN);
  body->type = MKA_ICV_INDICATOR;
  length -= MKA_HDR_LEN;
  set_mka_param_body_len(body, length);
 }

 if (mka_alg_tbl[participant->kay->mka_algindex].icv_hash(
      participant->ick.key, participant->ick.len,
      wpabuf_head(buf), wpabuf_len(buf), cmac)) {
  wpa_printf(MSG_ERROR, "KaY: failed to calculate ICV");
  return -1;
 }
 wpa_hexdump(MSG_DEBUG, "KaY: ICV", cmac, length);

 os_memcpy(wpabuf_put(buf, length), cmac, length);

 return 0;
}
