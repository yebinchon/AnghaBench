
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_pwd_data {int salt_len; int * outbuf; int my_element; TYPE_1__* grp; void* my_scalar; scalar_t__ salt; void* private_value; scalar_t__ out_frag_pos; } ;
struct crypto_bignum {int dummy; } ;
struct TYPE_2__ {int group; int pwe; } ;


 int FAILURE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int crypto_bignum_deinit (struct crypto_bignum*,int) ;
 void* crypto_bignum_init () ;
 int crypto_bignum_to_bin (void*,int *,size_t,size_t) ;
 size_t crypto_ec_order_len (int ) ;
 int crypto_ec_point_init (int ) ;
 scalar_t__ crypto_ec_point_invert (int ,int ) ;
 scalar_t__ crypto_ec_point_mul (int ,int ,struct crypto_bignum*,int ) ;
 scalar_t__ crypto_ec_point_to_bin (int ,int ,int *,int *) ;
 size_t crypto_ec_prime_len (int ) ;
 scalar_t__ eap_pwd_get_rand_mask (TYPE_1__*,void*,struct crypto_bignum*,void*) ;
 int eap_pwd_state (struct eap_pwd_data*,int ) ;
 int wpa_printf (int ,char*) ;
 int * wpabuf_alloc (int) ;
 int * wpabuf_put (int *,size_t) ;
 int wpabuf_put_data (int *,scalar_t__,int) ;
 int wpabuf_put_u8 (int *,int) ;

__attribute__((used)) static void eap_pwd_build_commit_req(struct eap_sm *sm,
         struct eap_pwd_data *data, u8 id)
{
 struct crypto_bignum *mask = ((void*)0);
 u8 *scalar, *element;
 size_t prime_len, order_len;

 wpa_printf(MSG_DEBUG, "EAP-pwd: Commit/Request");




 if (data->out_frag_pos)
  return;

 prime_len = crypto_ec_prime_len(data->grp->group);
 order_len = crypto_ec_order_len(data->grp->group);

 data->private_value = crypto_bignum_init();
 data->my_element = crypto_ec_point_init(data->grp->group);
 data->my_scalar = crypto_bignum_init();
 mask = crypto_bignum_init();
 if (!data->private_value || !data->my_element || !data->my_scalar ||
     !mask) {
  wpa_printf(MSG_INFO, "EAP-PWD (server): scalar allocation "
      "fail");
  goto fin;
 }

 if (eap_pwd_get_rand_mask(data->grp, data->private_value, mask,
      data->my_scalar) < 0)
  goto fin;

 if (crypto_ec_point_mul(data->grp->group, data->grp->pwe, mask,
    data->my_element) < 0) {
  wpa_printf(MSG_INFO, "EAP-PWD (server): element allocation "
      "fail");
  eap_pwd_state(data, FAILURE);
  goto fin;
 }

 if (crypto_ec_point_invert(data->grp->group, data->my_element) < 0) {
  wpa_printf(MSG_INFO, "EAP-PWD (server): element inversion "
      "fail");
  goto fin;
 }

 data->outbuf = wpabuf_alloc(2 * prime_len + order_len +
        (data->salt ? 1 + data->salt_len : 0));
 if (data->outbuf == ((void*)0))
  goto fin;


 if (data->salt_len) {
  wpabuf_put_u8(data->outbuf, data->salt_len);
  wpabuf_put_data(data->outbuf, data->salt, data->salt_len);
 }


 element = wpabuf_put(data->outbuf, 2 * prime_len);
 scalar = wpabuf_put(data->outbuf, order_len);
 crypto_bignum_to_bin(data->my_scalar, scalar, order_len, order_len);
 if (crypto_ec_point_to_bin(data->grp->group, data->my_element, element,
       element + prime_len) < 0) {
  wpa_printf(MSG_INFO, "EAP-PWD (server): point assignment "
      "fail");
  goto fin;
 }

fin:
 crypto_bignum_deinit(mask, 1);
 if (data->outbuf == ((void*)0))
  eap_pwd_state(data, FAILURE);
}
