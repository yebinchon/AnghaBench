
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_buffer {int offset; int allocated; int length; } ;
typedef int krb5_storage ;
typedef int krb5_error_code ;


 int CHECK (int ,int ) ;
 int krb5_ret_uint16 (int *,int *) ;
 int krb5_ret_uint32 (int *,int *) ;

__attribute__((used)) static krb5_error_code
ret_sec_buffer(krb5_storage *sp, struct sec_buffer *buf)
{
    krb5_error_code ret;
    CHECK(krb5_ret_uint16(sp, &buf->length), 0);
    CHECK(krb5_ret_uint16(sp, &buf->allocated), 0);
    CHECK(krb5_ret_uint32(sp, &buf->offset), 0);
out:
    return ret;
}
