
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_4__ {int length; } ;
typedef TYPE_1__ krb5_data ;


 scalar_t__ errno ;
 scalar_t__ krb5_ret_data (int *,TYPE_1__*) ;
 scalar_t__ krb5_storage_get_eof_code (int *) ;
 scalar_t__ krb5_storage_read (int *,char*,size_t) ;

__attribute__((used)) static krb5_error_code
ret_data_xdr(krb5_storage *sp, krb5_data *data)
{
    krb5_error_code ret;
    ret = krb5_ret_data(sp, data);
    if (ret)
 return ret;

    if ((data->length % 4) != 0) {
 char buf[4];
 size_t res;

 res = 4 - (data->length % 4);
 if (res != 4) {
     ret = krb5_storage_read(sp, buf, res);
     if((size_t)ret != res)
  return (ret < 0)? errno : krb5_storage_get_eof_code(sp);
 }
    }
    return 0;
}
