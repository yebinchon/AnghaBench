
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct ikev2_prf_alg {int hash_len; int id; } ;
struct ikev2_integ_alg {int dummy; } ;
struct TYPE_3__ {int encr; int prf; int integ; } ;
struct ikev2_initiator_data {int i_nonce_len; int r_nonce_len; int keys; struct wpabuf* i_dh_private; struct wpabuf* r_dh_public; TYPE_2__* dh; int r_spi; int i_spi; int r_nonce; int i_nonce; TYPE_1__ proposal; } ;
struct ikev2_encr_alg {int dummy; } ;
struct TYPE_4__ {size_t prime_len; } ;


 int IKEV2_MAX_HASH_LEN ;
 int IKEV2_SPI_LEN ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 struct wpabuf* dh_derive_shared (struct wpabuf*,struct wpabuf*,TYPE_2__*) ;
 int ikev2_derive_sk_keys (struct ikev2_prf_alg const*,struct ikev2_integ_alg const*,struct ikev2_encr_alg const*,int *,int *,size_t,int *) ;
 struct ikev2_encr_alg* ikev2_get_encr (int ) ;
 struct ikev2_integ_alg* ikev2_get_integ (int ) ;
 struct ikev2_prf_alg* ikev2_get_prf (int ) ;
 scalar_t__ ikev2_prf_hash (int ,int *,int,int,int const**,size_t*,int *) ;
 int os_free (int *) ;
 int * os_malloc (size_t) ;
 int os_memcpy (int *,int ,int) ;
 int * os_zalloc (size_t) ;
 int wpa_hexdump_key (int ,char*,int *,int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 int * wpabuf_head (struct wpabuf*) ;
 size_t wpabuf_len (struct wpabuf*) ;

__attribute__((used)) static int ikev2_derive_keys(struct ikev2_initiator_data *data)
{
 u8 *buf, *pos, *pad, skeyseed[IKEV2_MAX_HASH_LEN];
 size_t buf_len, pad_len;
 struct wpabuf *shared;
 const struct ikev2_integ_alg *integ;
 const struct ikev2_prf_alg *prf;
 const struct ikev2_encr_alg *encr;
 int ret;
 const u8 *addr[2];
 size_t len[2];



 integ = ikev2_get_integ(data->proposal.integ);
 prf = ikev2_get_prf(data->proposal.prf);
 encr = ikev2_get_encr(data->proposal.encr);
 if (integ == ((void*)0) || prf == ((void*)0) || encr == ((void*)0)) {
  wpa_printf(MSG_INFO, "IKEV2: Unsupported proposal");
  return -1;
 }

 shared = dh_derive_shared(data->r_dh_public, data->i_dh_private,
      data->dh);
 if (shared == ((void*)0))
  return -1;



 buf_len = data->i_nonce_len + data->r_nonce_len + 2 * IKEV2_SPI_LEN;
 buf = os_malloc(buf_len);
 if (buf == ((void*)0)) {
  wpabuf_free(shared);
  return -1;
 }

 pos = buf;
 os_memcpy(pos, data->i_nonce, data->i_nonce_len);
 pos += data->i_nonce_len;
 os_memcpy(pos, data->r_nonce, data->r_nonce_len);
 pos += data->r_nonce_len;
 os_memcpy(pos, data->i_spi, IKEV2_SPI_LEN);
 pos += IKEV2_SPI_LEN;
 os_memcpy(pos, data->r_spi, IKEV2_SPI_LEN);




 pad_len = data->dh->prime_len - wpabuf_len(shared);
 pad = os_zalloc(pad_len ? pad_len : 1);
 if (pad == ((void*)0)) {
  wpabuf_free(shared);
  os_free(buf);
  return -1;
 }
 addr[0] = pad;
 len[0] = pad_len;
 addr[1] = wpabuf_head(shared);
 len[1] = wpabuf_len(shared);
 if (ikev2_prf_hash(prf->id, buf, data->i_nonce_len + data->r_nonce_len,
      2, addr, len, skeyseed) < 0) {
  wpabuf_free(shared);
  os_free(buf);
  os_free(pad);
  return -1;
 }
 os_free(pad);
 wpabuf_free(shared);


 wpabuf_free(data->r_dh_public);
 data->r_dh_public = ((void*)0);
 wpabuf_free(data->i_dh_private);
 data->i_dh_private = ((void*)0);

 wpa_hexdump_key(MSG_DEBUG, "IKEV2: SKEYSEED",
   skeyseed, prf->hash_len);

 ret = ikev2_derive_sk_keys(prf, integ, encr, skeyseed, buf, buf_len,
       &data->keys);
 os_free(buf);
 return ret;
}
