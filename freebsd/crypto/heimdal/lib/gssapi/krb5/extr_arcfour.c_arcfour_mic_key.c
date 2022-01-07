
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* data; int length; } ;
struct TYPE_8__ {scalar_t__ keytype; TYPE_1__ keyvalue; } ;
typedef TYPE_2__ krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int k5_data ;
struct TYPE_9__ {TYPE_1__ checksum; } ;
typedef int T ;
typedef TYPE_3__ Checksum ;


 int CKSUMTYPE_RSA_MD5 ;
 scalar_t__ ENCTYPE_ARCFOUR_HMAC_MD5 ;
 scalar_t__ ENCTYPE_ARCFOUR_HMAC_MD5_56 ;
 scalar_t__ krb5_hmac (int ,int ,void*,size_t,int ,TYPE_2__*,TYPE_3__*) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int,int) ;

__attribute__((used)) static krb5_error_code
arcfour_mic_key(krb5_context context, krb5_keyblock *key,
  void *cksum_data, size_t cksum_size,
  void *key6_data, size_t key6_size)
{
    krb5_error_code ret;

    Checksum cksum_k5;
    krb5_keyblock key5;
    char k5_data[16];

    Checksum cksum_k6;

    char T[4];

    memset(T, 0, 4);
    cksum_k5.checksum.data = k5_data;
    cksum_k5.checksum.length = sizeof(k5_data);

    if (key->keytype == ENCTYPE_ARCFOUR_HMAC_MD5_56) {
 char L40[14] = "fortybits";

 memcpy(L40 + 10, T, sizeof(T));
 ret = krb5_hmac(context, CKSUMTYPE_RSA_MD5,
   L40, 14, 0, key, &cksum_k5);
 memset(&k5_data[7], 0xAB, 9);
    } else {
 ret = krb5_hmac(context, CKSUMTYPE_RSA_MD5,
   T, 4, 0, key, &cksum_k5);
    }
    if (ret)
 return ret;

    key5.keytype = ENCTYPE_ARCFOUR_HMAC_MD5;
    key5.keyvalue = cksum_k5.checksum;

    cksum_k6.checksum.data = key6_data;
    cksum_k6.checksum.length = key6_size;

    return krb5_hmac(context, CKSUMTYPE_RSA_MD5,
       cksum_data, cksum_size, 0, &key5, &cksum_k6);
}
