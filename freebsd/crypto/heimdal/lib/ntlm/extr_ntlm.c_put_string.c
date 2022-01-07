
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntlm_buf {int length; int data; } ;
typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;


 int CHECK (int ,int ) ;
 scalar_t__ ascii2ucs2le (char const*,int ,struct ntlm_buf*) ;
 int heim_ntlm_free_buf (struct ntlm_buf*) ;
 int krb5_storage_write (int *,int ,int ) ;
 int rk_UNCONST (char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static krb5_error_code
put_string(krb5_storage *sp, int ucs2, const char *s)
{
    krb5_error_code ret;
    struct ntlm_buf buf;

    if (ucs2) {
 ret = ascii2ucs2le(s, 0, &buf);
 if (ret)
     return ret;
    } else {
 buf.data = rk_UNCONST(s);
 buf.length = strlen(s);
    }

    CHECK(krb5_storage_write(sp, buf.data, buf.length), buf.length);
    if (ucs2)
 heim_ntlm_free_buf(&buf);
    ret = 0;
out:
    return ret;
}
