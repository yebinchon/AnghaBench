
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tmp ;
struct _krb5_key_data {TYPE_2__* key; } ;
struct _krb5_checksum_type {int dummy; } ;
typedef int signature ;
typedef int ksign_c_data ;
struct TYPE_5__ {int length; unsigned char* data; } ;
struct TYPE_6__ {TYPE_1__ keyvalue; } ;
typedef TYPE_2__ krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
struct TYPE_7__ {TYPE_1__ checksum; } ;
typedef int EVP_MD_CTX ;
typedef TYPE_3__ Checksum ;


 int CKSUMTYPE_RSA_MD5 ;
 scalar_t__ ENOMEM ;
 int EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 int EVP_DigestInit_ex (int *,int ,int *) ;
 int EVP_DigestUpdate (int *,void const*,size_t) ;
 int * EVP_MD_CTX_create () ;
 int EVP_MD_CTX_destroy (int *) ;
 int EVP_md5 () ;
 int N_ (char*,char*) ;
 struct _krb5_checksum_type* _krb5_find_checksum (int ) ;
 scalar_t__ _krb5_internal_hmac (int ,struct _krb5_checksum_type*,...) ;
 int krb5_set_error_message (int ,scalar_t__,int ) ;

krb5_error_code
_krb5_HMAC_MD5_checksum(krb5_context context,
   struct _krb5_key_data *key,
   const void *data,
   size_t len,
   unsigned usage,
   Checksum *result)
{
    EVP_MD_CTX *m;
    struct _krb5_checksum_type *c = _krb5_find_checksum (CKSUMTYPE_RSA_MD5);
    const char signature[] = "signaturekey";
    Checksum ksign_c;
    struct _krb5_key_data ksign;
    krb5_keyblock kb;
    unsigned char t[4];
    unsigned char tmp[16];
    unsigned char ksign_c_data[16];
    krb5_error_code ret;

    m = EVP_MD_CTX_create();
    if (m == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM, N_("malloc: out of memory", ""));
 return ENOMEM;
    }
    ksign_c.checksum.length = sizeof(ksign_c_data);
    ksign_c.checksum.data = ksign_c_data;
    ret = _krb5_internal_hmac(context, c, signature, sizeof(signature),
         0, key, &ksign_c);
    if (ret) {
 EVP_MD_CTX_destroy(m);
 return ret;
    }
    ksign.key = &kb;
    kb.keyvalue = ksign_c.checksum;
    EVP_DigestInit_ex(m, EVP_md5(), ((void*)0));
    t[0] = (usage >> 0) & 0xFF;
    t[1] = (usage >> 8) & 0xFF;
    t[2] = (usage >> 16) & 0xFF;
    t[3] = (usage >> 24) & 0xFF;
    EVP_DigestUpdate(m, t, 4);
    EVP_DigestUpdate(m, data, len);
    EVP_DigestFinal_ex (m, tmp, ((void*)0));
    EVP_MD_CTX_destroy(m);

    ret = _krb5_internal_hmac(context, c, tmp, sizeof(tmp), 0, &ksign, result);
    if (ret)
 return ret;
    return 0;
}
