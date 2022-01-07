
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
typedef int * krb5_crypto ;
typedef int krb5_context ;
struct TYPE_6__ {size_t length; int data; } ;
struct TYPE_7__ {TYPE_1__ checksum; } ;
typedef TYPE_2__ Checksum ;


 scalar_t__ CKSUMTYPE_HMAC_MD5 ;
 scalar_t__ EINVAL ;
 scalar_t__ HMAC_MD5_any_checksum (int ,int const*,void*,size_t,int ,TYPE_2__*) ;
 int KRB5_KU_OTHER_CKSUM ;
 int free_Checksum (TYPE_2__*) ;
 scalar_t__ krb5_create_checksum (int ,int *,int ,int ,void*,size_t,TYPE_2__*) ;
 int krb5_crypto_destroy (int ,int *) ;
 scalar_t__ krb5_crypto_init (int ,int const*,int ,int **) ;
 int krb5_set_error_message (int ,scalar_t__,char*) ;
 int memcpy (void*,int ,size_t) ;

__attribute__((used)) static krb5_error_code
create_checksum(krb5_context context,
  const krb5_keyblock *key,
  uint32_t cksumtype,
  void *data, size_t datalen,
  void *sig, size_t siglen)
{
    krb5_crypto crypto = ((void*)0);
    krb5_error_code ret;
    Checksum cksum;
    if (cksumtype == (uint32_t)CKSUMTYPE_HMAC_MD5) {
 ret = HMAC_MD5_any_checksum(context, key, data, datalen,
        KRB5_KU_OTHER_CKSUM, &cksum);
    } else {
 ret = krb5_crypto_init(context, key, 0, &crypto);
 if (ret)
     return ret;

 ret = krb5_create_checksum(context, crypto, KRB5_KU_OTHER_CKSUM, 0,
       data, datalen, &cksum);
 krb5_crypto_destroy(context, crypto);
 if (ret)
     return ret;
    }
    if (cksum.checksum.length != siglen) {
 krb5_set_error_message(context, EINVAL, "pac checksum wrong length");
 free_Checksum(&cksum);
 return EINVAL;
    }

    memcpy(sig, cksum.checksum.data, siglen);
    free_Checksum(&cksum);

    return 0;
}
