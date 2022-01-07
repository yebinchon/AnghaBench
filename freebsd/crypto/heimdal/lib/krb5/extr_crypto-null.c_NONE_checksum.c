
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _krb5_key_data {int dummy; } ;
typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int Checksum ;



__attribute__((used)) static krb5_error_code
NONE_checksum(krb5_context context,
       struct _krb5_key_data *key,
       const void *data,
       size_t len,
       unsigned usage,
       Checksum *C)
{
    return 0;
}
