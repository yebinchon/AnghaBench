
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_kafs_data {int context; } ;
struct kafs_data {struct krb5_kafs_data* data; } ;


 int krb5_free_error_message (int ,char const*) ;

__attribute__((used)) static void
free_error(struct kafs_data *data, const char *str)
{
    struct krb5_kafs_data *d = data->data;
    krb5_free_error_message(d->context, str);
}
