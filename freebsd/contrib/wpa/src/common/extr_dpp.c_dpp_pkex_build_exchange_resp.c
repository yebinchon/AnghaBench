
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct dpp_pkex {int Nx; int identifier; TYPE_1__* own_bi; } ;
struct dpp_curve_params {int prime_len; int ike_group; } ;
typedef enum dpp_status_error { ____Placeholder_dpp_status_error } dpp_status_error ;
struct TYPE_2__ {struct dpp_curve_params* curve; } ;
typedef int BIGNUM ;


 int DPP_ATTR_CODE_IDENTIFIER ;
 int DPP_ATTR_ENCRYPTED_KEY ;
 int DPP_ATTR_FINITE_CYCLIC_GROUP ;
 int DPP_PA_PKEX_EXCHANGE_RESP ;
 int DPP_STATUS_BAD_GROUP ;
 int DPP_STATUS_OK ;
 scalar_t__ DPP_TEST_INVALID_ENCRYPTED_KEY_PKEX_EXCHANGE_RESP ;
 scalar_t__ DPP_TEST_INVALID_STATUS_PKEX_EXCHANGE_RESP ;
 scalar_t__ DPP_TEST_NO_ENCRYPTED_KEY_PKEX_EXCHANGE_RESP ;
 scalar_t__ DPP_TEST_NO_STATUS_PKEX_EXCHANGE_RESP ;
 int MSG_INFO ;
 struct wpabuf* dpp_alloc_msg (int ,size_t) ;
 scalar_t__ dpp_bn2bin_pad (int const*,int ,int) ;
 int dpp_build_attr_status (struct wpabuf*,int) ;
 scalar_t__ dpp_test ;
 scalar_t__ dpp_test_gen_invalid_key (struct wpabuf*,struct dpp_curve_params const*) ;
 int os_strlen (int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_le16 (struct wpabuf*,int) ;
 int wpabuf_put_str (struct wpabuf*,int ) ;

__attribute__((used)) static struct wpabuf *
dpp_pkex_build_exchange_resp(struct dpp_pkex *pkex,
        enum dpp_status_error status,
        const BIGNUM *Nx, const BIGNUM *Ny)
{
 struct wpabuf *msg = ((void*)0);
 size_t attr_len;
 const struct dpp_curve_params *curve = pkex->own_bi->curve;


 attr_len = 4 + 1;
 if (pkex->identifier)
  attr_len += 4 + os_strlen(pkex->identifier);
 attr_len += 4 + 2 * curve->prime_len;
 msg = dpp_alloc_msg(DPP_PA_PKEX_EXCHANGE_RESP, attr_len);
 if (!msg)
  goto fail;
 dpp_build_attr_status(msg, status);






 if (pkex->identifier) {
  wpabuf_put_le16(msg, DPP_ATTR_CODE_IDENTIFIER);
  wpabuf_put_le16(msg, os_strlen(pkex->identifier));
  wpabuf_put_str(msg, pkex->identifier);
 }

 if (status != DPP_STATUS_OK)
  goto skip_encrypted_key;
 wpabuf_put_le16(msg, DPP_ATTR_ENCRYPTED_KEY);
 wpabuf_put_le16(msg, 2 * curve->prime_len);
 if (dpp_bn2bin_pad(Nx, wpabuf_put(msg, curve->prime_len),
      curve->prime_len) < 0 ||
     dpp_bn2bin_pad(Nx, pkex->Nx, curve->prime_len) < 0 ||
     dpp_bn2bin_pad(Ny, wpabuf_put(msg, curve->prime_len),
      curve->prime_len) < 0)
  goto fail;

skip_encrypted_key:
 if (status == DPP_STATUS_BAD_GROUP) {

  wpabuf_put_le16(msg, DPP_ATTR_FINITE_CYCLIC_GROUP);
  wpabuf_put_le16(msg, 2);
  wpabuf_put_le16(msg, curve->ike_group);
 }

 return msg;
fail:
 wpabuf_free(msg);
 return ((void*)0);
}
