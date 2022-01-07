
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int krb5_storage ;
typedef TYPE_3__* krb5_principal ;
typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_5__ {int len; int * val; } ;
struct TYPE_6__ {int name_type; TYPE_1__ name_string; } ;
struct TYPE_7__ {TYPE_2__ name; int realm; } ;


 int KRB5_STORAGE_PRINCIPAL_NO_NAME_TYPE ;
 int KRB5_STORAGE_PRINCIPAL_WRONG_NUM_COMPONENTS ;
 int krb5_kt_store_string (int *,int ) ;
 scalar_t__ krb5_storage_is_flags (int *,int ) ;
 int krb5_store_int16 (int *,int) ;
 int krb5_store_int32 (int *,int ) ;

__attribute__((used)) static krb5_error_code
krb5_kt_store_principal(krb5_context context,
   krb5_storage *sp,
   krb5_principal p)
{
    size_t i;
    int ret;

    if(krb5_storage_is_flags(sp, KRB5_STORAGE_PRINCIPAL_WRONG_NUM_COMPONENTS))
 ret = krb5_store_int16(sp, p->name.name_string.len + 1);
    else
 ret = krb5_store_int16(sp, p->name.name_string.len);
    if(ret) return ret;
    ret = krb5_kt_store_string(sp, p->realm);
    if(ret) return ret;
    for(i = 0; i < p->name.name_string.len; i++){
 ret = krb5_kt_store_string(sp, p->name.name_string.val[i]);
 if(ret)
     return ret;
    }
    if(!krb5_storage_is_flags(sp, KRB5_STORAGE_PRINCIPAL_NO_NAME_TYPE)) {
 ret = krb5_store_int32(sp, p->name.name_type);
 if(ret)
     return ret;
    }

    return 0;
}
