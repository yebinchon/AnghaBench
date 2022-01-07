
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* fetch ) (TYPE_1__*,unsigned char*,size_t) ;int eof_code; } ;
typedef TYPE_1__ krb5_storage ;
typedef int krb5_error_code ;
typedef unsigned long int32_t ;


 int _krb5_get_int (unsigned char*,unsigned long*,size_t) ;
 int errno ;
 int stub1 (TYPE_1__*,unsigned char*,size_t) ;

__attribute__((used)) static krb5_error_code
krb5_ret_int(krb5_storage *sp,
      int32_t *value,
      size_t len)
{
    int ret;
    unsigned char v[4];
    unsigned long w;
    ret = sp->fetch(sp, v, len);
    if (ret < 0)
 return errno;
    if ((size_t)ret != len)
 return sp->eof_code;
    _krb5_get_int(v, &w, len);
    *value = w;
    return 0;
}
