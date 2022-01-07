
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_kafs_data {int context; } ;
struct kafs_data {struct krb5_kafs_data* data; } ;


 char const* krb5_get_error_message (int ,int) ;

__attribute__((used)) static const char *
get_error(struct kafs_data *data, int error)
{
    struct krb5_kafs_data *d = data->data;
    return krb5_get_error_message(d->context, error);
}
