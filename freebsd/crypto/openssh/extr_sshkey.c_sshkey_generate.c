
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sshkey {int type; int rsa; int ecdsa; int ecdsa_nid; int dsa; int * ed25519_sk; int * ed25519_pk; } ;


 int ED25519_PK_SZ ;
 int ED25519_SK_SZ ;




 int KEY_UNSPEC ;

 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int crypto_sign_ed25519_keypair (int *,int *) ;
 int dsa_generate_private_key (int ,int *) ;
 int ecdsa_generate_private_key (int ,int *,int *) ;
 void* malloc (int ) ;
 int rsa_generate_private_key (int ,int *) ;
 int sshkey_free (struct sshkey*) ;
 struct sshkey* sshkey_new (int ) ;
 int sshkey_xmss_generate_private_key (struct sshkey*,int ) ;

int
sshkey_generate(int type, u_int bits, struct sshkey **keyp)
{
 struct sshkey *k;
 int ret = SSH_ERR_INTERNAL_ERROR;

 if (keyp == ((void*)0))
  return SSH_ERR_INVALID_ARGUMENT;
 *keyp = ((void*)0);
 if ((k = sshkey_new(KEY_UNSPEC)) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 switch (type) {
 case 130:
  if ((k->ed25519_pk = malloc(ED25519_PK_SZ)) == ((void*)0) ||
      (k->ed25519_sk = malloc(ED25519_SK_SZ)) == ((void*)0)) {
   ret = SSH_ERR_ALLOC_FAIL;
   break;
  }
  crypto_sign_ed25519_keypair(k->ed25519_pk, k->ed25519_sk);
  ret = 0;
  break;
 default:
  ret = SSH_ERR_INVALID_ARGUMENT;
 }
 if (ret == 0) {
  k->type = type;
  *keyp = k;
 } else
  sshkey_free(k);
 return ret;
}
