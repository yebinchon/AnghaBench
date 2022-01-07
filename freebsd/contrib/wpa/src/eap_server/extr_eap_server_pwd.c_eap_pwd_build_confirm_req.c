
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct eap_sm {int dummy; } ;
struct eap_pwd_data {int * outbuf; int * my_confirm; int group_num; int peer_scalar; int peer_element; TYPE_1__* grp; int my_scalar; int my_element; int k; scalar_t__ out_frag_pos; } ;
struct crypto_hash {int dummy; } ;
struct TYPE_2__ {int group; } ;


 int EAP_PWD_DEFAULT_PRF ;
 int EAP_PWD_DEFAULT_RAND_FUNC ;
 int FAILURE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int SHA256_MAC_LEN ;
 int bin_clear_free (int *,size_t) ;
 int crypto_bignum_to_bin (int ,int *,size_t,size_t) ;
 size_t crypto_ec_order_len (int ) ;
 scalar_t__ crypto_ec_point_to_bin (int ,int ,int *,int *) ;
 size_t crypto_ec_prime_len (int ) ;
 int eap_pwd_h_final (struct crypto_hash*,int *) ;
 struct crypto_hash* eap_pwd_h_init () ;
 int eap_pwd_h_update (struct crypto_hash*,int *,int) ;
 int eap_pwd_state (struct eap_pwd_data*,int ) ;
 int htons (int ) ;
 int * os_malloc (size_t) ;
 int os_memcpy (int *,int *,int) ;
 int os_memset (int *,int ,size_t) ;
 int wpa_printf (int ,char*) ;
 int * wpabuf_alloc (int) ;
 int wpabuf_put_data (int *,int *,int) ;

__attribute__((used)) static void eap_pwd_build_confirm_req(struct eap_sm *sm,
          struct eap_pwd_data *data, u8 id)
{
 struct crypto_hash *hash = ((void*)0);
 u8 conf[SHA256_MAC_LEN], *cruft = ((void*)0), *ptr;
 u16 grp;
 size_t prime_len, order_len;

 wpa_printf(MSG_DEBUG, "EAP-pwd: Confirm/Request");




 if (data->out_frag_pos)
  return;

 prime_len = crypto_ec_prime_len(data->grp->group);
 order_len = crypto_ec_order_len(data->grp->group);


 cruft = os_malloc(prime_len * 2);
 if (!cruft) {
  wpa_printf(MSG_INFO, "EAP-PWD (server): debug allocation "
      "fail");
  goto fin;
 }





 hash = eap_pwd_h_init();
 if (hash == ((void*)0))
  goto fin;







 crypto_bignum_to_bin(data->k, cruft, prime_len, prime_len);
 eap_pwd_h_update(hash, cruft, prime_len);


 if (crypto_ec_point_to_bin(data->grp->group, data->my_element, cruft,
       cruft + prime_len) < 0) {
  wpa_printf(MSG_INFO, "EAP-PWD (server): confirm point "
      "assignment fail");
  goto fin;
 }
 eap_pwd_h_update(hash, cruft, prime_len * 2);


 crypto_bignum_to_bin(data->my_scalar, cruft, order_len, order_len);
 eap_pwd_h_update(hash, cruft, order_len);


 if (crypto_ec_point_to_bin(data->grp->group, data->peer_element, cruft,
       cruft + prime_len) < 0) {
  wpa_printf(MSG_INFO, "EAP-PWD (server): confirm point "
      "assignment fail");
  goto fin;
 }
 eap_pwd_h_update(hash, cruft, prime_len * 2);


 crypto_bignum_to_bin(data->peer_scalar, cruft, order_len, order_len);
 eap_pwd_h_update(hash, cruft, order_len);


 grp = htons(data->group_num);
 os_memset(cruft, 0, prime_len);
 ptr = cruft;
 os_memcpy(ptr, &grp, sizeof(u16));
 ptr += sizeof(u16);
 *ptr = EAP_PWD_DEFAULT_RAND_FUNC;
 ptr += sizeof(u8);
 *ptr = EAP_PWD_DEFAULT_PRF;
 ptr += sizeof(u8);
 eap_pwd_h_update(hash, cruft, ptr - cruft);


 eap_pwd_h_final(hash, conf);
 hash = ((void*)0);
 os_memcpy(data->my_confirm, conf, SHA256_MAC_LEN);

 data->outbuf = wpabuf_alloc(SHA256_MAC_LEN);
 if (data->outbuf == ((void*)0))
  goto fin;

 wpabuf_put_data(data->outbuf, conf, SHA256_MAC_LEN);

fin:
 bin_clear_free(cruft, prime_len * 2);
 if (data->outbuf == ((void*)0))
  eap_pwd_state(data, FAILURE);
 eap_pwd_h_final(hash, ((void*)0));
}
