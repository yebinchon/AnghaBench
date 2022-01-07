
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_3__* hx509_private_key ;
struct TYPE_7__ {int * rsa; scalar_t__ ecdsa; } ;
struct TYPE_8__ {scalar_t__ ref; TYPE_2__ private_key; TYPE_1__* ops; } ;
struct TYPE_6__ {int key_oid; } ;


 int ASN1_OID_ID_ECPUBLICKEY ;
 int ASN1_OID_ID_PKCS1_RSAENCRYPTION ;
 int EC_KEY_free (scalar_t__) ;
 int RSA_free (int *) ;
 int _hx509_abort (char*) ;
 scalar_t__ der_heim_oid_cmp (int ,int ) ;
 int free (TYPE_3__*) ;

int
hx509_private_key_free(hx509_private_key *key)
{
    if (key == ((void*)0) || *key == ((void*)0))
 return 0;

    if ((*key)->ref == 0)
 _hx509_abort("key refcount == 0 on free");
    if (--(*key)->ref > 0)
 return 0;

    if ((*key)->ops && der_heim_oid_cmp((*key)->ops->key_oid, ASN1_OID_ID_PKCS1_RSAENCRYPTION) == 0) {
 if ((*key)->private_key.rsa)
     RSA_free((*key)->private_key.rsa);





    }
    (*key)->private_key.rsa = ((void*)0);
    free(*key);
    *key = ((void*)0);
    return 0;
}
