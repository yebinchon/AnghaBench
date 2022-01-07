
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sshkey {int type; int xmss_sk; int xmss_pk; int * xmss_name; TYPE_1__* cert; int ed25519_sk; int ed25519_pk; int ecdsa; int ecdsa_nid; int dsa; int rsa; } ;
struct sshbuf {int dummy; } ;
typedef enum sshkey_serialize_rep { ____Placeholder_sshkey_serialize_rep } sshkey_serialize_rep ;
struct TYPE_2__ {int certblob; } ;
typedef int BIGNUM ;


 int DSA_get0_key (int ,int const**,int const**) ;
 int DSA_get0_pqg (int ,int const**,int const**,int const**) ;
 int const* EC_KEY_get0_private_key (int ) ;
 int ED25519_PK_SZ ;
 int ED25519_SK_SZ ;
 int RSA_get0_crt_params (int ,int *,int *,int const**) ;
 int RSA_get0_factors (int ,int const**,int const**) ;
 int RSA_get0_key (int ,int const**,int const**,int const**) ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int sshbuf_len (int ) ;
 int sshbuf_put_bignum2 (struct sshbuf*,int const*) ;
 int sshbuf_put_cstring (struct sshbuf*,int *) ;
 int sshbuf_put_eckey (struct sshbuf*,int ) ;
 int sshbuf_put_string (struct sshbuf*,int ,int ) ;
 int sshbuf_put_stringb (struct sshbuf*,int ) ;
 int * sshkey_curve_nid_to_name (int ) ;
 int * sshkey_ssh_name (struct sshkey const*) ;
 int sshkey_xmss_pklen (struct sshkey const*) ;
 int sshkey_xmss_serialize_state_opt (struct sshkey const*,struct sshbuf*,int) ;
 int sshkey_xmss_sklen (struct sshkey const*) ;

int
sshkey_private_serialize_opt(const struct sshkey *key, struct sshbuf *b,
    enum sshkey_serialize_rep opts)
{
 int r = SSH_ERR_INTERNAL_ERROR;





 if ((r = sshbuf_put_cstring(b, sshkey_ssh_name(key))) != 0)
  goto out;
 switch (key->type) {
 case 133:
  if ((r = sshbuf_put_string(b, key->ed25519_pk,
      ED25519_PK_SZ)) != 0 ||
      (r = sshbuf_put_string(b, key->ed25519_sk,
      ED25519_SK_SZ)) != 0)
   goto out;
  break;
 case 132:
  if (key->cert == ((void*)0) || sshbuf_len(key->cert->certblob) == 0) {
   r = SSH_ERR_INVALID_ARGUMENT;
   goto out;
  }
  if ((r = sshbuf_put_stringb(b, key->cert->certblob)) != 0 ||
      (r = sshbuf_put_string(b, key->ed25519_pk,
      ED25519_PK_SZ)) != 0 ||
      (r = sshbuf_put_string(b, key->ed25519_sk,
      ED25519_SK_SZ)) != 0)
   goto out;
  break;
 default:
  r = SSH_ERR_INVALID_ARGUMENT;
  goto out;
 }

 r = 0;
 out:
 return r;
}
