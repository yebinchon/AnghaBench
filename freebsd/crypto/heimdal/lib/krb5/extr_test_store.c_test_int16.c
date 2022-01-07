
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int int16_t ;


 int SEEK_SET ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_errx (int ,int,char*) ;
 scalar_t__ krb5_ret_int16 (int *,int*) ;
 int krb5_storage_seek (int *,int ,int ) ;
 int krb5_storage_truncate (int *,int ) ;
 scalar_t__ krb5_store_int16 (int *,int) ;

__attribute__((used)) static void
test_int16(krb5_context context, krb5_storage *sp)
{
    krb5_error_code ret;
    int i;
    int16_t val[] = {
 0, 1, -1, 32768, -32767
    }, v;

    krb5_storage_truncate(sp, 0);

    for (i = 0; i < sizeof(val[0])/sizeof(val); i++) {

 ret = krb5_store_int16(sp, val[i]);
 if (ret)
     krb5_err(context, 1, ret, "krb5_store_int16");
 krb5_storage_seek(sp, 0, SEEK_SET);
 ret = krb5_ret_int16(sp, &v);
 if (ret)
     krb5_err(context, 1, ret, "krb5_ret_int16");
 if (v != val[i])
     krb5_errx(context, 1, "store and ret mismatch");
    }
}
