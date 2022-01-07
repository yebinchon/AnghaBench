
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_krbhst_info {int dummy; } ;
struct krb5_krbhst_data {int dummy; } ;
typedef int krb5_error_code ;
typedef int krb5_context ;


 int ENOMEM ;
 int append_host_hostinfo (struct krb5_krbhst_data*,struct krb5_krbhst_info*) ;
 struct krb5_krbhst_info* parse_hostspec (int ,struct krb5_krbhst_data*,char const*,int,int) ;

__attribute__((used)) static krb5_error_code
append_host_string(krb5_context context, struct krb5_krbhst_data *kd,
     const char *host, int def_port, int port)
{
    struct krb5_krbhst_info *hi;

    hi = parse_hostspec(context, kd, host, def_port, port);
    if(hi == ((void*)0))
 return ENOMEM;

    append_host_hostinfo(kd, hi);
    return 0;
}
