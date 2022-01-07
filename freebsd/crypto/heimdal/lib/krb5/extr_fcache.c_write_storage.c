
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int krb5_storage ;
typedef int krb5_error_code ;
struct TYPE_4__ {scalar_t__ length; int data; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_context ;


 int N_ (char*,char*) ;
 int errno ;
 int krb5_data_free (TYPE_1__*) ;
 int krb5_set_error_message (int ,int,int ) ;
 int krb5_storage_to_data (int *,TYPE_1__*) ;
 scalar_t__ write (int,int ,scalar_t__) ;

__attribute__((used)) static krb5_error_code
write_storage(krb5_context context, krb5_storage *sp, int fd)
{
    krb5_error_code ret;
    krb5_data data;
    ssize_t sret;

    ret = krb5_storage_to_data(sp, &data);
    if (ret) {
 krb5_set_error_message(context, ret, N_("malloc: out of memory", ""));
 return ret;
    }
    sret = write(fd, data.data, data.length);
    ret = (sret != (ssize_t)data.length);
    krb5_data_free(&data);
    if (ret) {
 ret = errno;
 krb5_set_error_message(context, ret,
          N_("Failed to write FILE credential data", ""));
 return ret;
    }
    return 0;
}
