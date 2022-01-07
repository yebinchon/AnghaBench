
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_krbhst_data {int realm; int port; } ;
typedef int krb5_krbhst_info ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;


 int _krb5_debug (int ,int,char*,int ,char const*,char const*,scalar_t__) ;
 int append_host_hostinfo (struct krb5_krbhst_data*,int *) ;
 int free (int **) ;
 scalar_t__ srv_find_realm (int ,int ***,int*,int ,char*,char const*,char const*,int ) ;

__attribute__((used)) static void
srv_get_hosts(krb5_context context, struct krb5_krbhst_data *kd,
       const char *proto, const char *service)
{
    krb5_error_code ret;
    krb5_krbhst_info **res;
    int count, i;

    ret = srv_find_realm(context, &res, &count, kd->realm, "SRV", proto, service,
    kd->port);
    _krb5_debug(context, 2, "searching DNS for realm %s %s.%s -> %d",
  kd->realm, proto, service, ret);
    if (ret)
 return;
    for(i = 0; i < count; i++)
 append_host_hostinfo(kd, res[i]);
    free(res);
}
