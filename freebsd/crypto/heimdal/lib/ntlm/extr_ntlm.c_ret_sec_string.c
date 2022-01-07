
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_buffer {int length; int offset; } ;
typedef int krb5_storage ;
typedef int krb5_error_code ;


 int CHECK (int ,int ) ;
 int SEEK_SET ;
 int krb5_storage_seek (int *,int ,int ) ;
 int ret_string (int *,int,int ,char**) ;

__attribute__((used)) static krb5_error_code
ret_sec_string(krb5_storage *sp, int ucs2, struct sec_buffer *desc, char **s)
{
    krb5_error_code ret = 0;
    CHECK(krb5_storage_seek(sp, desc->offset, SEEK_SET), desc->offset);
    CHECK(ret_string(sp, ucs2, desc->length, s), 0);
 out:
    return ret;
}
