
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct sae_data {TYPE_1__* tmp; int group; } ;
struct TYPE_2__ {int prime_len; int own_commit_element_ffc; int own_commit_element_ecc; scalar_t__ ec; int own_commit_scalar; } ;


 int MSG_DEBUG ;
 scalar_t__ WLAN_EID_EXTENSION ;
 scalar_t__ WLAN_EID_EXT_PASSWORD_IDENTIFIER ;
 int crypto_bignum_to_bin (int ,int *,int,int) ;
 int crypto_ec_point_to_bin (scalar_t__,int ,int *,int *) ;
 scalar_t__ os_strlen (char const*) ;
 int wpa_hexdump (int ,char*,int *,int) ;
 int wpa_printf (int ,char*,char const*) ;
 int * wpabuf_head (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;
 int * wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf const*) ;
 int wpabuf_put_le16 (struct wpabuf*,int ) ;
 int wpabuf_put_str (struct wpabuf*,char const*) ;
 int wpabuf_put_u8 (struct wpabuf*,scalar_t__) ;

void sae_write_commit(struct sae_data *sae, struct wpabuf *buf,
        const struct wpabuf *token, const char *identifier)
{
 u8 *pos;

 if (sae->tmp == ((void*)0))
  return;

 wpabuf_put_le16(buf, sae->group);
 if (token) {
  wpabuf_put_buf(buf, token);
  wpa_hexdump(MSG_DEBUG, "SAE: Anti-clogging token",
       wpabuf_head(token), wpabuf_len(token));
 }
 pos = wpabuf_put(buf, sae->tmp->prime_len);
 crypto_bignum_to_bin(sae->tmp->own_commit_scalar, pos,
        sae->tmp->prime_len, sae->tmp->prime_len);
 wpa_hexdump(MSG_DEBUG, "SAE: own commit-scalar",
      pos, sae->tmp->prime_len);
 if (sae->tmp->ec) {
  pos = wpabuf_put(buf, 2 * sae->tmp->prime_len);
  crypto_ec_point_to_bin(sae->tmp->ec,
           sae->tmp->own_commit_element_ecc,
           pos, pos + sae->tmp->prime_len);
  wpa_hexdump(MSG_DEBUG, "SAE: own commit-element(x)",
       pos, sae->tmp->prime_len);
  wpa_hexdump(MSG_DEBUG, "SAE: own commit-element(y)",
       pos + sae->tmp->prime_len, sae->tmp->prime_len);
 } else {
  pos = wpabuf_put(buf, sae->tmp->prime_len);
  crypto_bignum_to_bin(sae->tmp->own_commit_element_ffc, pos,
         sae->tmp->prime_len, sae->tmp->prime_len);
  wpa_hexdump(MSG_DEBUG, "SAE: own commit-element",
       pos, sae->tmp->prime_len);
 }

 if (identifier) {

  wpabuf_put_u8(buf, WLAN_EID_EXTENSION);
  wpabuf_put_u8(buf, 1 + os_strlen(identifier));
  wpabuf_put_u8(buf, WLAN_EID_EXT_PASSWORD_IDENTIFIER);
  wpabuf_put_str(buf, identifier);
  wpa_printf(MSG_DEBUG, "SAE: own Password Identifier: %s",
      identifier);
 }
}
