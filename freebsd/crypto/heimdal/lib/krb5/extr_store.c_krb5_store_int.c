
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int v ;
struct TYPE_4__ {int (* store ) (TYPE_1__*,unsigned char*,size_t) ;int eof_code; } ;
typedef TYPE_1__ krb5_storage ;
typedef int krb5_error_code ;
typedef int int32_t ;


 int EINVAL ;
 int _krb5_put_int (unsigned char*,int ,size_t) ;
 int errno ;
 int stub1 (TYPE_1__*,unsigned char*,size_t) ;

__attribute__((used)) static krb5_error_code
krb5_store_int(krb5_storage *sp,
        int32_t value,
        size_t len)
{
    int ret;
    unsigned char v[16];

    if(len > sizeof(v))
 return EINVAL;
    _krb5_put_int(v, value, len);
    ret = sp->store(sp, v, len);
    if (ret < 0)
 return errno;
    if ((size_t)ret != len)
 return sp->eof_code;
    return 0;
}
