
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_storage ;
typedef int krb5_error_code ;
typedef int heim_general_string ;


 int KRB5_KT_END ;
 int errno ;
 int krb5_storage_write (int *,int ,size_t) ;
 int krb5_store_int16 (int *,size_t) ;
 size_t strlen (int ) ;

__attribute__((used)) static krb5_error_code
krb5_kt_store_string(krb5_storage *sp,
       heim_general_string data)
{
    int ret;
    size_t len = strlen(data);
    ret = krb5_store_int16(sp, len);
    if(ret < 0)
 return ret;
    ret = krb5_storage_write(sp, data, len);
    if(ret != (int)len){
 if(ret < 0)
     return errno;
 return KRB5_KT_END;
    }
    return 0;
}
