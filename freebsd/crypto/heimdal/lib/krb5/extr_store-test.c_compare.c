
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_storage ;
struct TYPE_4__ {size_t length; void* data; } ;
typedef TYPE_1__ krb5_data ;


 int errx (int,char*) ;
 int krb5_data_free (TYPE_1__*) ;
 int krb5_storage_free (int *) ;
 scalar_t__ krb5_storage_to_data (int *,TYPE_1__*) ;
 scalar_t__ memcmp (void*,void*,size_t) ;
 int print_data (void*,size_t) ;
 int printf (char*,...) ;

__attribute__((used)) static int
compare(const char *name, krb5_storage *sp, void *expected, size_t len)
{
    int ret = 0;
    krb5_data data;
    if (krb5_storage_to_data(sp, &data))
 errx(1, "krb5_storage_to_data failed");
    krb5_storage_free(sp);
    if(data.length != len || memcmp(data.data, expected, len) != 0) {
 printf("%s mismatch\n", name);
 printf("  Expected: ");
 print_data(expected, len);
 printf("  Actual:   ");
 print_data(data.data, data.length);
 ret++;
    }
    krb5_data_free(&data);
    return ret;
}
