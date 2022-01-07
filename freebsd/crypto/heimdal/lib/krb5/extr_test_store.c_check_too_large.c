
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int too_big_sizes ;
typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_data ;
typedef int krb5_context ;


 scalar_t__ HEIM_ERR_TOO_BIG ;
 int INT_MAX ;
 int SEEK_SET ;
 int errx (int,char*,unsigned long) ;
 scalar_t__ krb5_ret_data (int *,int *) ;
 int krb5_storage_seek (int *,int ,int ) ;
 int krb5_storage_truncate (int *,int ) ;
 int krb5_store_uint32 (int *,int) ;

__attribute__((used)) static void
check_too_large(krb5_context context, krb5_storage *sp)
{
    uint32_t too_big_sizes[] = { INT_MAX, INT_MAX / 2, INT_MAX / 4, INT_MAX / 8 + 1};
    krb5_error_code ret;
    krb5_data data;
    size_t n;

    for (n = 0; n < sizeof(too_big_sizes) / sizeof(too_big_sizes); n++) {
 krb5_storage_truncate(sp, 0);
 krb5_store_uint32(sp, too_big_sizes[n]);
 krb5_storage_seek(sp, 0, SEEK_SET);
 ret = krb5_ret_data(sp, &data);
 if (ret != HEIM_ERR_TOO_BIG)
     errx(1, "not too big: %lu", (unsigned long)n);
    }
}
