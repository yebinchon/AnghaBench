
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntlm_buf {int length; int data; } ;
typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;


 int CHECK (int ,int ) ;
 int krb5_storage_write (int *,int ,int ) ;

__attribute__((used)) static krb5_error_code
put_buf(krb5_storage *sp, const struct ntlm_buf *buf)
{
    krb5_error_code ret;
    CHECK(krb5_storage_write(sp, buf->data, buf->length), buf->length);
    ret = 0;
out:
    return ret;
}
