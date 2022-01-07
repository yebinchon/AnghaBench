
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tl_data_contents; int tl_data_length; int tl_data_type; } ;
typedef TYPE_1__ krb5_tl_data ;
typedef int krb5_storage ;
struct TYPE_6__ {int data; int length; } ;
typedef TYPE_2__ krb5_data ;
typedef int kadm5_ret_t ;


 int krb5_store_data (int *,TYPE_2__) ;
 int krb5_store_int32 (int *,int ) ;

kadm5_ret_t
kadm5_store_tl_data(krb5_storage *sp,
      krb5_tl_data *tl)
{
    krb5_data c;
    krb5_store_int32(sp, tl->tl_data_type);
    c.length = tl->tl_data_length;
    c.data = tl->tl_data_contents;
    krb5_store_data(sp, c);
    return 0;
}
