
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_kafs_data {int context; } ;
struct kafs_data {struct krb5_kafs_data* data; } ;
typedef int krb5_realm ;


 int krb5_free_host_realm (int ,int *) ;
 scalar_t__ krb5_get_host_realm (int ,char const*,int **) ;
 char* strdup (int ) ;

__attribute__((used)) static char *
get_realm(struct kafs_data *data, const char *host)
{
    struct krb5_kafs_data *d = data->data;
    krb5_realm *realms;
    char *r;
    if(krb5_get_host_realm(d->context, host, &realms))
 return ((void*)0);
    r = strdup(realms[0]);
    krb5_free_host_realm(d->context, realms);
    return r;
}
