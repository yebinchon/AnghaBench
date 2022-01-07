
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _krb5_key_data {int dummy; } ;
typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_boolean ;



__attribute__((used)) static krb5_error_code
NULL_encrypt(krb5_context context,
      struct _krb5_key_data *key,
      void *data,
      size_t len,
      krb5_boolean encryptp,
      int usage,
      void *ivec)
{
    return 0;
}
