
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {scalar_t__ used; } ;
struct sae_data {int const* pmk; int const* pmkid; int send_confirm; TYPE_1__* tmp; } ;
struct crypto_bignum {int dummy; } ;
typedef int sae ;
typedef int peer_confirm ;
typedef int peer_commit ;
typedef int local_rand ;
typedef int local_mask ;
typedef int local_confirm ;
typedef int local_commit ;
struct TYPE_2__ {int const* kck; int own_commit_element_ecc; int ec; int pwe_ecc; int own_commit_scalar; int order; struct crypto_bignum* sae_rand; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int SAE_KCK_LEN ;
 int SAE_PMKID_LEN ;
 int SAE_PMK_LEN ;
 scalar_t__ crypto_bignum_add (struct crypto_bignum*,struct crypto_bignum*,int ) ;
 int crypto_bignum_deinit (struct crypto_bignum*,int) ;
 void* crypto_bignum_init_set (int const*,int) ;
 scalar_t__ crypto_bignum_mod (int ,int ,int ) ;
 scalar_t__ crypto_ec_point_invert (int ,int ) ;
 scalar_t__ crypto_ec_point_mul (int ,int ,struct crypto_bignum*,int ) ;
 scalar_t__ os_memcmp (int const*,int const*,int) ;
 int os_memset (struct sae_data*,int ,int) ;
 int os_strlen (char const*) ;
 scalar_t__ sae_check_confirm (struct sae_data*,int const*,int) ;
 int sae_clear_data (struct sae_data*) ;
 scalar_t__ sae_parse_commit (struct sae_data*,int const*,int,int *,int *,int *) ;
 scalar_t__ sae_prepare_commit (int const*,int const*,int const*,int ,char const*,struct sae_data*) ;
 scalar_t__ sae_process_commit (struct sae_data*) ;
 scalar_t__ sae_set_group (struct sae_data*,int) ;
 int sae_write_commit (struct sae_data*,struct wpabuf*,int *,char const*) ;
 int sae_write_confirm (struct sae_data*,struct wpabuf*) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 int const* wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;

__attribute__((used)) static int sae_tests(void)
{
 return 0;

}
