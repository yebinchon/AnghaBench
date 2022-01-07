
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int type; int cert; int * xmss_filename; int * xmss_name; struct sshkey* xmss_sk; struct sshkey* xmss_pk; struct sshkey* ed25519_sk; struct sshkey* ed25519_pk; int * ecdsa; int * dsa; int * rsa; } ;


 int DSA_free (int *) ;
 int EC_KEY_free (int *) ;
 int ED25519_PK_SZ ;
 int ED25519_SK_SZ ;
 int RSA_free (int *) ;
 int cert_free (int ) ;
 int free (int *) ;
 int freezero (struct sshkey*,int) ;
 scalar_t__ sshkey_is_cert (struct sshkey*) ;
 int sshkey_xmss_free_state (struct sshkey*) ;
 int sshkey_xmss_pklen (struct sshkey*) ;
 int sshkey_xmss_sklen (struct sshkey*) ;

void
sshkey_free(struct sshkey *k)
{
 if (k == ((void*)0))
  return;
 switch (k->type) {
 case 134:
 case 133:
  freezero(k->ed25519_pk, ED25519_PK_SZ);
  k->ed25519_pk = ((void*)0);
  freezero(k->ed25519_sk, ED25519_SK_SZ);
  k->ed25519_sk = ((void*)0);
  break;
 case 130:
  break;
 default:
  break;
 }
 if (sshkey_is_cert(k))
  cert_free(k->cert);
 freezero(k, sizeof(*k));
}
