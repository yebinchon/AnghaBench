
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct wpabuf {int dummy; } ;
struct p2ps_advertisement {int svc_name; int config_methods; int id; int hash; struct p2ps_advertisement* next; } ;
struct p2p_data {int dummy; } ;


 scalar_t__ MAX_SVC_ADV_IE_LEN ;
 size_t MAX_SVC_ADV_LEN ;
 int MSG_DEBUG ;
 scalar_t__ P2PS_HASH_LEN ;
 int P2PS_WILD_HASH_STR ;
 int P2P_ATTR_ADVERTISED_SERVICE ;
 int WPA_PUT_LE16 (scalar_t__*,int ) ;
 scalar_t__ os_memcmp (scalar_t__ const*,int ,scalar_t__) ;
 scalar_t__* p2p_buf_add_ie_hdr (struct wpabuf*) ;
 scalar_t__ p2p_buf_add_service_info (struct wpabuf*,struct p2p_data*,int ,int ,int ,scalar_t__**,scalar_t__**,size_t*,scalar_t__*) ;
 int p2p_buf_update_ie_hdr (struct wpabuf*,scalar_t__*) ;
 scalar_t__ p2p_wfa_service_adv (struct p2p_data*) ;
 scalar_t__ p2ps_wildcard_hash (struct p2p_data*,scalar_t__ const*,scalar_t__) ;
 int wpa_hexdump (int ,char*,scalar_t__ const*,scalar_t__) ;
 struct wpabuf* wpabuf_alloc (scalar_t__) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__* wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf*) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

void p2p_buf_add_service_instance(struct wpabuf *buf, struct p2p_data *p2p,
      u8 hash_count, const u8 *hash,
      struct p2ps_advertisement *adv_list)
{
 struct p2ps_advertisement *adv;
 int p2ps_wildcard;
 size_t total_len;
 struct wpabuf *tmp_buf = ((void*)0);
 u8 *pos, *attr_len, *ie_len = ((void*)0);

 if (!adv_list || !hash || !hash_count)
  return;

 wpa_hexdump(MSG_DEBUG, "P2PS: Probe Request service hash values",
      hash, hash_count * P2PS_HASH_LEN);
 p2ps_wildcard = p2ps_wildcard_hash(p2p, hash, hash_count) &&
  p2p_wfa_service_adv(p2p);


 tmp_buf = wpabuf_alloc(MAX_SVC_ADV_IE_LEN + 256 + P2PS_HASH_LEN);
 if (!tmp_buf)
  return;





 ie_len = p2p_buf_add_ie_hdr(tmp_buf);

 total_len = 0;

 wpabuf_put_u8(tmp_buf, P2P_ATTR_ADVERTISED_SERVICE);
 attr_len = wpabuf_put(tmp_buf, sizeof(u16));
 WPA_PUT_LE16(attr_len, (u16) total_len);
 p2p_buf_update_ie_hdr(tmp_buf, ie_len);
 pos = wpabuf_put(tmp_buf, 0);

 if (p2ps_wildcard) {

  p2p_buf_add_service_info(tmp_buf, p2p, 0, 0, P2PS_WILD_HASH_STR,
      &ie_len, &pos, &total_len, attr_len);
 }


 for (adv = adv_list; adv && total_len <= MAX_SVC_ADV_LEN;
      adv = adv->next) {
  const u8 *test = hash;
  u8 i;

  for (i = 0; i < hash_count; i++) {

   if (os_memcmp(test, adv->hash, P2PS_HASH_LEN) == 0 &&
       p2p_buf_add_service_info(tmp_buf, p2p,
           adv->id,
           adv->config_methods,
           adv->svc_name,
           &ie_len, &pos,
           &total_len,
           attr_len))
    break;

   test += P2PS_HASH_LEN;
  }
 }

 if (total_len)
  wpabuf_put_buf(buf, tmp_buf);
 wpabuf_free(tmp_buf);
}
