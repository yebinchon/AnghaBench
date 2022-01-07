
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int type; int * cert; } ;



 int KEY_DSA_CERT ;

 int KEY_ECDSA_CERT ;

 int KEY_ED25519_CERT ;

 int KEY_RSA_CERT ;

 int KEY_XMSS_CERT ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int * cert_new () ;

int
sshkey_to_certified(struct sshkey *k)
{
 int newtype;

 switch (k->type) {
 case 130:
  newtype = KEY_ED25519_CERT;
  break;





 default:
  return SSH_ERR_INVALID_ARGUMENT;
 }
 if ((k->cert = cert_new()) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 k->type = newtype;
 return 0;
}
