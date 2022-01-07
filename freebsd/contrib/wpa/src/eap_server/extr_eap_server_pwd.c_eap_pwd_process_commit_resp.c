
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_pwd_data {int k; TYPE_1__* grp; int private_value; int peer_element; int peer_scalar; int my_element; int my_scalar; } ;
struct crypto_ec_point {int dummy; } ;
struct TYPE_3__ {int group; struct crypto_ec_point* pwe; } ;


 int FAILURE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int PWD_Confirm_Req ;
 scalar_t__ crypto_bignum_cmp (int ,int ) ;
 int crypto_bignum_init () ;
 size_t crypto_ec_order_len (int ) ;
 scalar_t__ crypto_ec_point_add (int ,struct crypto_ec_point*,int ,struct crypto_ec_point*) ;
 scalar_t__ crypto_ec_point_cmp (int ,int ,int ) ;
 int crypto_ec_point_deinit (struct crypto_ec_point*,int) ;
 struct crypto_ec_point* crypto_ec_point_init (int ) ;
 scalar_t__ crypto_ec_point_is_at_infinity (int ,struct crypto_ec_point*) ;
 scalar_t__ crypto_ec_point_mul (int ,struct crypto_ec_point*,int ,struct crypto_ec_point*) ;
 scalar_t__ crypto_ec_point_x (int ,struct crypto_ec_point*,int ) ;
 size_t crypto_ec_prime_len (int ) ;
 int eap_pwd_get_element (TYPE_1__*,int const*) ;
 int eap_pwd_get_scalar (TYPE_1__*,int const*) ;
 int eap_pwd_state (struct eap_pwd_data*,int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void
eap_pwd_process_commit_resp(struct eap_sm *sm, struct eap_pwd_data *data,
       const u8 *payload, size_t payload_len)
{
 const u8 *ptr;
 struct crypto_ec_point *K = ((void*)0);
 int res = 0;
 size_t prime_len, order_len;

 wpa_printf(MSG_DEBUG, "EAP-pwd: Received commit response");

 prime_len = crypto_ec_prime_len(data->grp->group);
 order_len = crypto_ec_order_len(data->grp->group);

 if (payload_len != 2 * prime_len + order_len) {
  wpa_printf(MSG_INFO,
      "EAP-pwd: Unexpected Commit payload length %u (expected %u)",
      (unsigned int) payload_len,
      (unsigned int) (2 * prime_len + order_len));
  goto fin;
 }

 data->k = crypto_bignum_init();
 K = crypto_ec_point_init(data->grp->group);
 if (!data->k || !K) {
  wpa_printf(MSG_INFO, "EAP-PWD (server): peer data allocation "
      "fail");
  goto fin;
 }


 ptr = payload;
 data->peer_element = eap_pwd_get_element(data->grp, ptr);
 if (!data->peer_element) {
  wpa_printf(MSG_INFO, "EAP-PWD (server): setting peer element "
      "fail");
  goto fin;
 }
 ptr += prime_len * 2;
 data->peer_scalar = eap_pwd_get_scalar(data->grp, ptr);
 if (!data->peer_scalar) {
  wpa_printf(MSG_INFO, "EAP-PWD (server): peer data allocation "
      "fail");
  goto fin;
 }


 if (crypto_bignum_cmp(data->my_scalar, data->peer_scalar) == 0 ||
     crypto_ec_point_cmp(data->grp->group, data->my_element,
    data->peer_element) == 0) {
  wpa_printf(MSG_INFO,
      "EAP-PWD (server): detected reflection attack!");
  goto fin;
 }


 if ((crypto_ec_point_mul(data->grp->group, data->grp->pwe,
     data->peer_scalar, K) < 0) ||
     (crypto_ec_point_add(data->grp->group, K, data->peer_element,
     K) < 0) ||
     (crypto_ec_point_mul(data->grp->group, K, data->private_value,
     K) < 0)) {
  wpa_printf(MSG_INFO, "EAP-PWD (server): computing shared key "
      "fail");
  goto fin;
 }







 if (crypto_ec_point_is_at_infinity(data->grp->group, K)) {
  wpa_printf(MSG_INFO, "EAP-PWD (server): shared key point is "
      "at infinity");
  goto fin;
 }
 if (crypto_ec_point_x(data->grp->group, K, data->k)) {
  wpa_printf(MSG_INFO, "EAP-PWD (server): unable to extract "
      "shared secret from secret point");
  goto fin;
 }
 res = 1;

fin:
 crypto_ec_point_deinit(K, 1);

 if (res)
  eap_pwd_state(data, PWD_Confirm_Req);
 else
  eap_pwd_state(data, FAILURE);
}
