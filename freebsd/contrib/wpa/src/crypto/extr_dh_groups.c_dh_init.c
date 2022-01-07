
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct dh_group {size_t prime_len; int prime; int * generator; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 scalar_t__ crypto_dh_init (int ,int ,size_t,int ,int ) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf*) ;
 int wpa_hexdump_buf_key (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 int wpabuf_clear_free (struct wpabuf*) ;
 int wpabuf_mhead (struct wpabuf*) ;
 int wpabuf_put (struct wpabuf*,size_t) ;

struct wpabuf * dh_init(const struct dh_group *dh, struct wpabuf **priv)
{
 struct wpabuf *pv;
 size_t pv_len;

 if (dh == ((void*)0))
  return ((void*)0);

 wpabuf_clear_free(*priv);
 *priv = wpabuf_alloc(dh->prime_len);
 if (*priv == ((void*)0))
  return ((void*)0);

 pv_len = dh->prime_len;
 pv = wpabuf_alloc(pv_len);
 if (pv == ((void*)0)) {
  wpabuf_clear_free(*priv);
  *priv = ((void*)0);
  return ((void*)0);
 }
 if (crypto_dh_init(*dh->generator, dh->prime, dh->prime_len,
      wpabuf_mhead(*priv), wpabuf_mhead(pv)) < 0) {
  wpabuf_clear_free(pv);
  wpa_printf(MSG_INFO, "DH: crypto_dh_init failed");
  wpabuf_clear_free(*priv);
  *priv = ((void*)0);
  return ((void*)0);
 }
 wpabuf_put(*priv, dh->prime_len);
 wpabuf_put(pv, dh->prime_len);
 wpa_hexdump_buf_key(MSG_DEBUG, "DH: private value", *priv);
 wpa_hexdump_buf(MSG_DEBUG, "DH: public value", pv);

 return pv;
}
