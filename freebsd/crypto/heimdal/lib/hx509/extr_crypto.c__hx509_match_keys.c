
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* hx509_private_key ;
typedef int hx509_cert ;
struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_6__ {int key_oid; } ;


 int ASN1_OID_ID_ECPUBLICKEY ;
 int ASN1_OID_ID_PKCS1_RSAENCRYPTION ;
 scalar_t__ der_heim_oid_cmp (int ,int ) ;
 int match_keys_ec (int ,TYPE_2__*) ;
 int match_keys_rsa (int ,TYPE_2__*) ;

int
_hx509_match_keys(hx509_cert c, hx509_private_key key)
{
    if (der_heim_oid_cmp(key->ops->key_oid, ASN1_OID_ID_PKCS1_RSAENCRYPTION) == 0)
 return match_keys_rsa(c, key);
    if (der_heim_oid_cmp(key->ops->key_oid, ASN1_OID_ID_ECPUBLICKEY) == 0)
 return match_keys_ec(c, key);
    return 0;

}
