
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sae_temporary_data {scalar_t__ prime_len; scalar_t__ order_len; int * order_buf; int * order; TYPE_1__* dh; int * prime_buf; int * prime; scalar_t__ ec; } ;
struct sae_data {int group; struct sae_temporary_data* tmp; } ;
struct TYPE_2__ {scalar_t__ prime_len; scalar_t__ order_len; int order; int prime; } ;


 int MSG_DEBUG ;
 scalar_t__ SAE_MAX_PRIME_LEN ;
 void* crypto_bignum_init_set (int ,scalar_t__) ;
 int * crypto_ec_get_order (scalar_t__) ;
 int * crypto_ec_get_prime (scalar_t__) ;
 scalar_t__ crypto_ec_init (int) ;
 scalar_t__ crypto_ec_order_len (scalar_t__) ;
 scalar_t__ crypto_ec_prime_len (scalar_t__) ;
 TYPE_1__* dh_groups_get (int) ;
 int dragonfly_suitable_group (int,int ) ;
 struct sae_temporary_data* os_zalloc (int) ;
 int sae_clear_data (struct sae_data*) ;
 int wpa_printf (int ,char*,int) ;

int sae_set_group(struct sae_data *sae, int group)
{
 struct sae_temporary_data *tmp;




 if (!dragonfly_suitable_group(group, 0)) {
  wpa_printf(MSG_DEBUG, "SAE: Reject unsuitable group %d", group);
  return -1;
 }


 sae_clear_data(sae);
 tmp = sae->tmp = os_zalloc(sizeof(*tmp));
 if (tmp == ((void*)0))
  return -1;


 tmp->ec = crypto_ec_init(group);
 if (tmp->ec) {
  wpa_printf(MSG_DEBUG, "SAE: Selecting supported ECC group %d",
      group);
  sae->group = group;
  tmp->prime_len = crypto_ec_prime_len(tmp->ec);
  tmp->prime = crypto_ec_get_prime(tmp->ec);
  tmp->order_len = crypto_ec_order_len(tmp->ec);
  tmp->order = crypto_ec_get_order(tmp->ec);
  return 0;
 }


 tmp->dh = dh_groups_get(group);
 if (tmp->dh) {
  wpa_printf(MSG_DEBUG, "SAE: Selecting supported FFC group %d",
      group);
  sae->group = group;
  tmp->prime_len = tmp->dh->prime_len;
  if (tmp->prime_len > SAE_MAX_PRIME_LEN) {
   sae_clear_data(sae);
   return -1;
  }

  tmp->prime_buf = crypto_bignum_init_set(tmp->dh->prime,
       tmp->prime_len);
  if (tmp->prime_buf == ((void*)0)) {
   sae_clear_data(sae);
   return -1;
  }
  tmp->prime = tmp->prime_buf;

  tmp->order_len = tmp->dh->order_len;
  tmp->order_buf = crypto_bignum_init_set(tmp->dh->order,
       tmp->dh->order_len);
  if (tmp->order_buf == ((void*)0)) {
   sae_clear_data(sae);
   return -1;
  }
  tmp->order = tmp->order_buf;

  return 0;
 }


 wpa_printf(MSG_DEBUG,
     "SAE: Group %d not supported by the crypto library", group);
 return -1;
}
