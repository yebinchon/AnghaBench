
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int type; int ecdsa_nid; int * cert; int * dsa; int * rsa; int * xmss_pk; int * xmss_sk; int * ed25519_pk; int * ed25519_sk; int * ecdsa; } ;
typedef int RSA ;
typedef int DSA ;


 int * DSA_new () ;
 int * RSA_new () ;
 struct sshkey* calloc (int,int) ;
 int * cert_new () ;
 int free (struct sshkey*) ;
 int sshkey_free (struct sshkey*) ;
 scalar_t__ sshkey_is_cert (struct sshkey*) ;

struct sshkey *
sshkey_new(int type)
{
 struct sshkey *k;





 if ((k = calloc(1, sizeof(*k))) == ((void*)0))
  return ((void*)0);
 k->type = type;
 k->ecdsa = ((void*)0);
 k->ecdsa_nid = -1;
 k->dsa = ((void*)0);
 k->rsa = ((void*)0);
 k->cert = ((void*)0);
 k->ed25519_sk = ((void*)0);
 k->ed25519_pk = ((void*)0);
 k->xmss_sk = ((void*)0);
 k->xmss_pk = ((void*)0);
 switch (k->type) {
 case 134:
 case 133:
 case 129:
 case 128:

  break;
 case 130:
  break;
 default:
  free(k);
  return ((void*)0);
 }

 if (sshkey_is_cert(k)) {
  if ((k->cert = cert_new()) == ((void*)0)) {
   sshkey_free(k);
   return ((void*)0);
  }
 }

 return k;
}
