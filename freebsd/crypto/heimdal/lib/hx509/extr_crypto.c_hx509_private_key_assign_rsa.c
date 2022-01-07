
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* hx509_private_key ;
struct TYPE_4__ {void* rsa; } ;
struct TYPE_5__ {int * md; int signature_alg; TYPE_1__ private_key; } ;


 int ASN1_OID_ID_PKCS1_SHA1WITHRSAENCRYPTION ;
 int RSA_free (void*) ;
 int pkcs1_rsa_sha1_alg ;

void
hx509_private_key_assign_rsa(hx509_private_key key, void *ptr)
{
    if (key->private_key.rsa)
 RSA_free(key->private_key.rsa);
    key->private_key.rsa = ptr;
    key->signature_alg = ASN1_OID_ID_PKCS1_SHA1WITHRSAENCRYPTION;
    key->md = &pkcs1_rsa_sha1_alg;
}
