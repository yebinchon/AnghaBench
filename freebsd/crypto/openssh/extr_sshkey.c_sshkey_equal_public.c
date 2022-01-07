
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int type; int * xmss_pk; int * ed25519_pk; int * ecdsa; int * dsa; int * rsa; } ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_cmp (int const*,int const*) ;
 int DSA_get0_key (int *,int const**,int *) ;
 int DSA_get0_pqg (int *,int const**,int const**,int const**) ;
 int EC_GROUP_cmp (int ,int ,int *) ;
 int EC_KEY_get0_group (int *) ;
 int * EC_KEY_get0_public_key (int *) ;
 int EC_POINT_cmp (int ,int *,int *,int *) ;
 int ED25519_PK_SZ ;
 int RSA_get0_key (int *,int const**,int const**,int *) ;
 int memcmp (int *,int *,int ) ;
 scalar_t__ sshkey_type_plain (int) ;
 int sshkey_xmss_pklen (struct sshkey const*) ;

int
sshkey_equal_public(const struct sshkey *a, const struct sshkey *b)
{
 if (a == ((void*)0) || b == ((void*)0) ||
     sshkey_type_plain(a->type) != sshkey_type_plain(b->type))
  return 0;

 switch (a->type) {
 case 133:
 case 132:
  return a->ed25519_pk != ((void*)0) && b->ed25519_pk != ((void*)0) &&
      memcmp(a->ed25519_pk, b->ed25519_pk, ED25519_PK_SZ) == 0;







 default:
  return 0;
 }

}
