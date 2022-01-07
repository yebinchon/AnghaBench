
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct _krb5_checksum_type {scalar_t__ type; } ;
typedef TYPE_3__* krb5_crypto ;
struct TYPE_6__ {TYPE_1__* key; } ;
struct TYPE_7__ {TYPE_2__ key; } ;
struct TYPE_5__ {scalar_t__ keytype; } ;


 scalar_t__ CKSUMTYPE_HMAC_MD5 ;
 scalar_t__ KEYTYPE_ARCFOUR ;

__attribute__((used)) static int
arcfour_checksum_p(struct _krb5_checksum_type *ct, krb5_crypto crypto)
{
    return (ct->type == CKSUMTYPE_HMAC_MD5) &&
 (crypto->key.key->keytype == KEYTYPE_ARCFOUR);
}
