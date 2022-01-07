
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int krb5_storage ;
typedef int krb5_error_code ;


 int CHECK (int ,int ) ;
 int krb5_store_uint16 (int *,int ) ;
 int len_string (int,char*) ;
 int put_string (int *,int,char*) ;

__attribute__((used)) static int
encode_ti_string(krb5_storage *out, uint16_t type, int ucs2, char *s)
{
    krb5_error_code ret;
    CHECK(krb5_store_uint16(out, type), 0);
    CHECK(krb5_store_uint16(out, len_string(ucs2, s)), 0);
    CHECK(put_string(out, ucs2, s), 0);
out:
    return ret;
}
