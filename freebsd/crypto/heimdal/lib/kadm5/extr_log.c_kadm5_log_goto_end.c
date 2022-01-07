
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_storage ;


 int SEEK_END ;
 int * krb5_storage_from_fd (int) ;
 int krb5_storage_seek (int *,int ,int ) ;

krb5_storage *
kadm5_log_goto_end (int fd)
{
    krb5_storage *sp;

    sp = krb5_storage_from_fd (fd);
    krb5_storage_seek(sp, 0, SEEK_END);
    return sp;
}
