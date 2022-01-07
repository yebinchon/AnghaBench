
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct sshkey {int type; int * xmss_pk; int xmss_name; int * ed25519_pk; int rsa; int * ecdsa; int ecdsa_nid; int dsa; } const sshkey ;
typedef int BIGNUM ;


 int BN_clear_free (int *) ;
 int * BN_dup (int const*) ;
 int DSA_get0_key (int ,int const**,int *) ;
 int DSA_get0_pqg (int ,int const**,int const**,int const**) ;
 int DSA_set0_key (int ,int *,int *) ;
 int DSA_set0_pqg (int ,int *,int *,int *) ;
 int EC_KEY_get0_public_key (int *) ;
 int * EC_KEY_new_by_curve_name (int ) ;
 int EC_KEY_set_public_key (int *,int ) ;
 size_t ED25519_PK_SZ ;
 int RSA_get0_key (int ,int const**,int const**,int *) ;
 int RSA_set0_key (int ,int *,int *,int *) ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_KEY_TYPE_UNKNOWN ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 void* malloc (size_t) ;
 int memcpy (int *,int *,size_t) ;
 int sshkey_cert_copy (struct sshkey const*,struct sshkey const*) ;
 int sshkey_free (struct sshkey const*) ;
 scalar_t__ sshkey_is_cert (struct sshkey const*) ;
 struct sshkey const* sshkey_new (int) ;
 int sshkey_xmss_init (struct sshkey const*,int ) ;
 size_t sshkey_xmss_pklen (struct sshkey const*) ;

int
sshkey_from_private(const struct sshkey *k, struct sshkey **pkp)
{
 struct sshkey *n = ((void*)0);
 int r = SSH_ERR_INTERNAL_ERROR;
 *pkp = ((void*)0);
 switch (k->type) {
 case 133:
 case 132:
  if ((n = sshkey_new(k->type)) == ((void*)0)) {
   r = SSH_ERR_ALLOC_FAIL;
   goto out;
  }
  if (k->ed25519_pk != ((void*)0)) {
   if ((n->ed25519_pk = malloc(ED25519_PK_SZ)) == ((void*)0)) {
    r = SSH_ERR_ALLOC_FAIL;
    goto out;
   }
   memcpy(n->ed25519_pk, k->ed25519_pk, ED25519_PK_SZ);
  }
  break;
 default:
  r = SSH_ERR_KEY_TYPE_UNKNOWN;
  goto out;
 }
 if (sshkey_is_cert(k) && (r = sshkey_cert_copy(k, n)) != 0)
  goto out;

 *pkp = n;
 n = ((void*)0);
 r = 0;
 out:
 sshkey_free(n);
 return r;
}
