
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_6__ {int length; int data; } ;
typedef TYPE_1__ krb5_data ;
typedef TYPE_2__* gss_buffer_t ;
struct TYPE_7__ {int length; int value; } ;
typedef int OM_uint32 ;


 scalar_t__ krb5_store_uint32 (int *,int ) ;
 scalar_t__ store_data_xdr (int *,TYPE_1__) ;

__attribute__((used)) static krb5_error_code
store_gss_init_res(krb5_storage *sp, krb5_data handle,
     OM_uint32 maj_stat, OM_uint32 min_stat,
     uint32_t seq_window, gss_buffer_t gout)
{
    krb5_error_code ret;
    krb5_data out;

    out.data = gout->value;
    out.length = gout->length;

    ret = store_data_xdr(sp, handle);
    if (ret) return ret;
    ret = krb5_store_uint32(sp, maj_stat);
    if (ret) return ret;
    ret = krb5_store_uint32(sp, min_stat);
    if (ret) return ret;
    ret = store_data_xdr(sp, out);
    return ret;
}
