
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct dh_group {size_t prime_len; int order_len; int order; int prime; int * generator; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 scalar_t__ crypto_dh_derive_secret (int ,int ,size_t,int ,int ,int ,int ,int ,int ,int ,size_t*) ;
 int wpa_hexdump_buf_key (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 int wpabuf_clear_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;
 int wpabuf_mhead (struct wpabuf*) ;
 int wpabuf_put (struct wpabuf*,size_t) ;

struct wpabuf * dh_derive_shared(const struct wpabuf *peer_public,
     const struct wpabuf *own_private,
     const struct dh_group *dh)
{
 struct wpabuf *shared;
 size_t shared_len;

 if (dh == ((void*)0) || peer_public == ((void*)0) || own_private == ((void*)0))
  return ((void*)0);

 shared_len = dh->prime_len;
 shared = wpabuf_alloc(shared_len);
 if (shared == ((void*)0))
  return ((void*)0);
 if (crypto_dh_derive_secret(*dh->generator, dh->prime, dh->prime_len,
        dh->order, dh->order_len,
        wpabuf_head(own_private),
        wpabuf_len(own_private),
        wpabuf_head(peer_public),
        wpabuf_len(peer_public),
        wpabuf_mhead(shared), &shared_len) < 0) {
  wpabuf_clear_free(shared);
  wpa_printf(MSG_INFO, "DH: crypto_dh_derive_secret failed");
  return ((void*)0);
 }
 wpabuf_put(shared, shared_len);
 wpa_hexdump_buf_key(MSG_DEBUG, "DH: shared key", shared);

 return shared;
}
