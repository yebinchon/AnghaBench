
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
typedef int krb5_storage ;
typedef int krb5_context ;


 int errno ;
 scalar_t__ fstat (int,struct stat*) ;
 int krb5_err (int ,int,int ,char*) ;
 int krb5_errx (int ,int,char*) ;
 int krb5_storage_truncate (int *,int) ;
 int krb5_store_string (int *,char*) ;

__attribute__((used)) static void
test_truncate(krb5_context context, krb5_storage *sp, int fd)
{
    struct stat sb;

    krb5_store_string(sp, "hej");
    krb5_storage_truncate(sp, 2);

    if (fstat(fd, &sb) != 0)
 krb5_err(context, 1, errno, "fstat");
    if (sb.st_size != 2)
 krb5_errx(context, 1, "length not 2");

    krb5_storage_truncate(sp, 1024);

    if (fstat(fd, &sb) != 0)
 krb5_err(context, 1, errno, "fstat");
    if (sb.st_size != 1024)
 krb5_errx(context, 1, "length not 2");
}
