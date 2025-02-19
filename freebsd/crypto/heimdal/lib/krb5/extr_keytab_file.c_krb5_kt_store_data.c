
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_storage ;
typedef int krb5_error_code ;
struct TYPE_3__ {scalar_t__ length; int data; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_context ;


 int KRB5_KT_END ;
 int errno ;
 int krb5_storage_write (int *,int ,scalar_t__) ;
 int krb5_store_int16 (int *,scalar_t__) ;

__attribute__((used)) static krb5_error_code
krb5_kt_store_data(krb5_context context,
     krb5_storage *sp,
     krb5_data data)
{
    int ret;
    ret = krb5_store_int16(sp, data.length);
    if(ret < 0)
 return ret;
    ret = krb5_storage_write(sp, data.data, data.length);
    if(ret != (int)data.length){
 if(ret < 0)
     return errno;
 return KRB5_KT_END;
    }
    return 0;
}
