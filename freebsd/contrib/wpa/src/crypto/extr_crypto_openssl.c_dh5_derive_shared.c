
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
typedef int DH ;
typedef int BIGNUM ;


 int * BN_bin2bn (int ,int ,int *) ;
 int BN_clear_free (int *) ;
 int DH_compute_key (int ,int *,int *) ;
 size_t DH_size (int *) ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 int wpabuf_clear_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;
 int wpabuf_mhead (struct wpabuf*) ;
 int wpabuf_put (struct wpabuf*,int) ;

struct wpabuf * dh5_derive_shared(void *ctx, const struct wpabuf *peer_public,
      const struct wpabuf *own_private)
{
 BIGNUM *pub_key;
 struct wpabuf *res = ((void*)0);
 size_t rlen;
 DH *dh = ctx;
 int keylen;

 if (ctx == ((void*)0))
  return ((void*)0);

 pub_key = BN_bin2bn(wpabuf_head(peer_public), wpabuf_len(peer_public),
       ((void*)0));
 if (pub_key == ((void*)0))
  return ((void*)0);

 rlen = DH_size(dh);
 res = wpabuf_alloc(rlen);
 if (res == ((void*)0))
  goto err;

 keylen = DH_compute_key(wpabuf_mhead(res), pub_key, dh);
 if (keylen < 0)
  goto err;
 wpabuf_put(res, keylen);
 BN_clear_free(pub_key);

 return res;

err:
 BN_clear_free(pub_key);
 wpabuf_clear_free(res);
 return ((void*)0);
}
