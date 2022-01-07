
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _krb5_key_data {int dummy; } ;
typedef int krb5_error_code ;
typedef int krb5_context ;
typedef scalar_t__ krb5_boolean ;


 int ARCFOUR_subdecrypt (int ,struct _krb5_key_data*,void*,size_t,unsigned int,void*) ;
 int ARCFOUR_subencrypt (int ,struct _krb5_key_data*,void*,size_t,unsigned int,void*) ;
 int _krb5_usage2arcfour (int ,unsigned int*) ;

__attribute__((used)) static krb5_error_code
ARCFOUR_encrypt(krb5_context context,
  struct _krb5_key_data *key,
  void *data,
  size_t len,
  krb5_boolean encryptp,
  int usage,
  void *ivec)
{
    krb5_error_code ret;
    unsigned keyusage = usage;

    if((ret = _krb5_usage2arcfour (context, &keyusage)) != 0)
 return ret;

    if (encryptp)
 return ARCFOUR_subencrypt (context, key, data, len, keyusage, ivec);
    else
 return ARCFOUR_subdecrypt (context, key, data, len, keyusage, ivec);
}
