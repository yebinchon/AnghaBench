
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct eap_sm {int dummy; } ;
struct eap_pwd_data {int session_id; int emsk; int msk; int my_confirm; int my_scalar; int peer_scalar; int k; TYPE_1__* grp; int my_element; int peer_element; int group_num; } ;
struct crypto_hash {int dummy; } ;
struct TYPE_2__ {int group; } ;


 int EAP_PWD_DEFAULT_PRF ;
 int EAP_PWD_DEFAULT_RAND_FUNC ;
 int FAILURE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int SHA256_MAC_LEN ;
 int SUCCESS ;
 int bin_clear_free (int *,size_t) ;
 scalar_t__ compute_keys (TYPE_1__*,int ,int ,int ,int *,int ,int *,int ,int ,int ) ;
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
 scalar_t__ os_memcmp_const (int *,int *,int) ;
 int os_memcpy (int *,int *,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void
eap_pwd_process_confirm_resp(struct eap_sm *sm, struct eap_pwd_data *data,
        const u8 *payload, size_t payload_len)
{
 struct crypto_hash *hash = ((void*)0);
 u32 cs;
 u16 grp;
 u8 conf[SHA256_MAC_LEN], *cruft = ((void*)0), *ptr;
 size_t prime_len, order_len;

 prime_len = crypto_ec_prime_len(data->grp->group);
 order_len = crypto_ec_order_len(data->grp->group);

 if (payload_len != SHA256_MAC_LEN) {
  wpa_printf(MSG_INFO,
      "EAP-pwd: Unexpected Confirm payload length %u (expected %u)",
      (unsigned int) payload_len, SHA256_MAC_LEN);
  goto fin;
 }


 grp = htons(data->group_num);
 ptr = (u8 *) &cs;
 os_memcpy(ptr, &grp, sizeof(u16));
 ptr += sizeof(u16);
 *ptr = EAP_PWD_DEFAULT_RAND_FUNC;
 ptr += sizeof(u8);
 *ptr = EAP_PWD_DEFAULT_PRF;


 cruft = os_malloc(prime_len * 2);
 if (!cruft) {
  wpa_printf(MSG_INFO, "EAP-PWD (peer): allocation fail");
  goto fin;
 }





 hash = eap_pwd_h_init();
 if (hash == ((void*)0))
  goto fin;


 crypto_bignum_to_bin(data->k, cruft, prime_len, prime_len);
 eap_pwd_h_update(hash, cruft, prime_len);


 if (crypto_ec_point_to_bin(data->grp->group, data->peer_element, cruft,
       cruft + prime_len) < 0) {
  wpa_printf(MSG_INFO, "EAP-PWD (server): confirm point "
      "assignment fail");
  goto fin;
 }
 eap_pwd_h_update(hash, cruft, prime_len * 2);


 crypto_bignum_to_bin(data->peer_scalar, cruft, order_len, order_len);
 eap_pwd_h_update(hash, cruft, order_len);


 if (crypto_ec_point_to_bin(data->grp->group, data->my_element, cruft,
       cruft + prime_len) < 0) {
  wpa_printf(MSG_INFO, "EAP-PWD (server): confirm point "
      "assignment fail");
  goto fin;
 }
 eap_pwd_h_update(hash, cruft, prime_len * 2);


 crypto_bignum_to_bin(data->my_scalar, cruft, order_len, order_len);
 eap_pwd_h_update(hash, cruft, order_len);


 eap_pwd_h_update(hash, (u8 *) &cs, sizeof(u32));


 eap_pwd_h_final(hash, conf);
 hash = ((void*)0);

 ptr = (u8 *) payload;
 if (os_memcmp_const(conf, ptr, SHA256_MAC_LEN)) {
  wpa_printf(MSG_INFO, "EAP-PWD (server): confirm did not "
      "verify");
  goto fin;
 }

 wpa_printf(MSG_DEBUG, "EAP-pwd (server): confirm verified");
 if (compute_keys(data->grp, data->k,
    data->peer_scalar, data->my_scalar, conf,
    data->my_confirm, &cs, data->msk, data->emsk,
    data->session_id) < 0)
  eap_pwd_state(data, FAILURE);
 else
  eap_pwd_state(data, SUCCESS);

fin:
 bin_clear_free(cruft, prime_len * 2);
 eap_pwd_h_final(hash, ((void*)0));
}
