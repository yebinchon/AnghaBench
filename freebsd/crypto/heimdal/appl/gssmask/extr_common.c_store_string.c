
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_storage ;
typedef size_t krb5_error_code ;


 size_t EINVAL ;
 size_t krb5_storage_write (int *,char const*,size_t) ;
 size_t krb5_store_int32 (int *,size_t) ;
 int strlen (char const*) ;

krb5_error_code
store_string(krb5_storage *sp, const char *str)
{
    size_t len = strlen(str) + 1;
    krb5_error_code ret;

    ret = krb5_store_int32(sp, len);
    if (ret)
 return ret;
    ret = krb5_storage_write(sp, str, len);
    if (ret != len)
 return EINVAL;
    return 0;
}
