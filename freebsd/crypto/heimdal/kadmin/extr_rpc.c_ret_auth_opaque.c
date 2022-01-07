
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opaque_auth {int data; int flavor; } ;
typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;


 scalar_t__ krb5_ret_uint32 (int *,int *) ;
 scalar_t__ ret_data_xdr (int *,int *) ;

__attribute__((used)) static krb5_error_code
ret_auth_opaque(krb5_storage *msg, struct opaque_auth *ao)
{
    krb5_error_code ret;
    ret = krb5_ret_uint32(msg, &ao->flavor);
    if (ret) return ret;
    ret = ret_data_xdr(msg, &ao->data);
    return ret;
}
