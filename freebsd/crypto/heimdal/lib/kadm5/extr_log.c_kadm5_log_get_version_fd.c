
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int krb5_storage ;
typedef int kadm5_ret_t ;
typedef int int32_t ;


 int SEEK_CUR ;
 int SEEK_END ;
 int errno ;
 int krb5_ret_int32 (int *,int *) ;
 int krb5_storage_free (int *) ;
 int * krb5_storage_from_fd (int) ;
 int krb5_storage_seek (int *,int,int ) ;
 int lseek (int,int ,int ) ;

kadm5_ret_t
kadm5_log_get_version_fd (int fd,
     uint32_t *ver)
{
    int ret;
    krb5_storage *sp;
    int32_t old_version;

    ret = lseek (fd, 0, SEEK_END);
    if(ret < 0)
 return errno;
    if(ret == 0) {
 *ver = 0;
 return 0;
    }
    sp = krb5_storage_from_fd (fd);
    krb5_storage_seek(sp, -4, SEEK_CUR);
    krb5_ret_int32 (sp, &old_version);
    *ver = old_version;
    krb5_storage_free(sp);
    lseek (fd, 0, SEEK_END);
    return 0;
}
