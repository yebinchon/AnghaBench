
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _krb5_key_data {int dummy; } ;
typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int Checksum ;


 int EVP_md5 () ;
 int _krb5_des_verify (int ,int ,struct _krb5_key_data*,void const*,size_t,int *) ;

__attribute__((used)) static krb5_error_code
RSA_MD5_DES3_verify(krb5_context context,
      struct _krb5_key_data *key,
      const void *data,
      size_t len,
      unsigned usage,
      Checksum *C)
{
    return _krb5_des_verify(context, EVP_md5(), key, data, len, C);
}
