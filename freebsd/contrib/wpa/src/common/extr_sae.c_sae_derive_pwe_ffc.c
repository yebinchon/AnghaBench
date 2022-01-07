
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sae_data {TYPE_1__* tmp; int group; } ;
struct crypto_bignum {int dummy; } ;
typedef int counter ;
typedef int addrs ;
struct TYPE_2__ {int prime_len; struct crypto_bignum* pwe_ffc; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int SHA256_MAC_LEN ;
 int bin_clear_free (int*,size_t) ;
 int const_time_eq_u8 (int,int) ;
 int const_time_select_bin (int,int*,int*,size_t,int*) ;
 int const_time_select_u8 (int,int,int) ;
 int crypto_bignum_deinit (struct crypto_bignum*,int) ;
 struct crypto_bignum* crypto_bignum_init () ;
 struct crypto_bignum* crypto_bignum_init_set (int*,size_t) ;
 scalar_t__ crypto_bignum_to_bin (struct crypto_bignum*,int*,size_t,size_t) ;
 int dragonfly_min_pwe_loop_iter (int ) ;
 scalar_t__ hmac_sha256_vector (int*,int,size_t,int const**,size_t*,int*) ;
 size_t os_strlen (char const*) ;
 int* os_zalloc (size_t) ;
 int sae_pwd_seed_key (int const*,int const*,int*) ;
 int sae_test_pwd_seed_ffc (struct sae_data*,int*,struct crypto_bignum*) ;
 int wpa_hexdump_ascii_key (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int sae_derive_pwe_ffc(struct sae_data *sae, const u8 *addr1,
         const u8 *addr2, const u8 *password,
         size_t password_len, const char *identifier)
{
 u8 counter, k, sel_counter = 0;
 u8 addrs[2 * ETH_ALEN];
 const u8 *addr[3];
 size_t len[3];
 size_t num_elem;
 u8 found = 0;

 u8 mask;
 struct crypto_bignum *pwe;
 size_t prime_len = sae->tmp->prime_len * 8;
 u8 *pwe_buf;

 crypto_bignum_deinit(sae->tmp->pwe_ffc, 1);
 sae->tmp->pwe_ffc = ((void*)0);



 pwe_buf = os_zalloc(prime_len * 2);
 pwe = crypto_bignum_init();
 if (!pwe_buf || !pwe)
  goto fail;

 wpa_hexdump_ascii_key(MSG_DEBUG, "SAE: password",
         password, password_len);






 sae_pwd_seed_key(addr1, addr2, addrs);

 addr[0] = password;
 len[0] = password_len;
 num_elem = 1;
 if (identifier) {
  addr[num_elem] = (const u8 *) identifier;
  len[num_elem] = os_strlen(identifier);
  num_elem++;
 }
 addr[num_elem] = &counter;
 len[num_elem] = sizeof(counter);
 num_elem++;

 k = dragonfly_min_pwe_loop_iter(sae->group);

 for (counter = 1; counter <= k || !found; counter++) {
  u8 pwd_seed[SHA256_MAC_LEN];
  int res;

  if (counter > 200) {

   wpa_printf(MSG_DEBUG, "SAE: Failed to derive PWE");
   break;
  }

  wpa_printf(MSG_DEBUG, "SAE: counter = %02u", counter);
  if (hmac_sha256_vector(addrs, sizeof(addrs), num_elem,
           addr, len, pwd_seed) < 0)
   break;
  res = sae_test_pwd_seed_ffc(sae, pwd_seed, pwe);


  if (res < 0)
   break;



  if (crypto_bignum_to_bin(pwe, pwe_buf + prime_len, prime_len,
      prime_len) < 0)
   break;
  const_time_select_bin(found, pwe_buf, pwe_buf + prime_len,
          prime_len, pwe_buf);
  sel_counter = const_time_select_u8(found, sel_counter, counter);
  mask = const_time_eq_u8(res, 1);
  found = const_time_select_u8(found, found, mask);
 }

 if (!found)
  goto fail;

 wpa_printf(MSG_DEBUG, "SAE: Use PWE from counter = %02u", sel_counter);
 sae->tmp->pwe_ffc = crypto_bignum_init_set(pwe_buf, prime_len);
fail:
 crypto_bignum_deinit(pwe, 1);
 bin_clear_free(pwe_buf, prime_len * 2);
 return sae->tmp->pwe_ffc ? 0 : -1;
}
