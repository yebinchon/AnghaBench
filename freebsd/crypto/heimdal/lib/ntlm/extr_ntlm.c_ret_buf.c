
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_buffer {int offset; int length; } ;
struct ntlm_buf {int length; int data; } ;
typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;


 int CHECK (int ,int ) ;
 int SEEK_SET ;
 int krb5_storage_read (int *,int ,int ) ;
 int krb5_storage_seek (int *,int ,int ) ;
 int malloc (int ) ;

__attribute__((used)) static krb5_error_code
ret_buf(krb5_storage *sp, struct sec_buffer *desc, struct ntlm_buf *buf)
{
    krb5_error_code ret;

    buf->data = malloc(desc->length);
    buf->length = desc->length;
    CHECK(krb5_storage_seek(sp, desc->offset, SEEK_SET), desc->offset);
    CHECK(krb5_storage_read(sp, buf->data, buf->length), buf->length);
    ret = 0;
out:
    return ret;
}
