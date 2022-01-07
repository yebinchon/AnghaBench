
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_krbhst_data {int port; int def_port; int flags; int realm; } ;
typedef int krb5_context ;


 int KD_CONFIG_EXISTS ;
 int _krb5_debug (int ,int,char*,int ,char*) ;
 int append_host_string (int ,struct krb5_krbhst_data*,char*,int ,int ) ;
 int krb5_config_free_strings (char**) ;
 char** krb5_config_get_strings (int ,int *,char*,int ,char const*,int *) ;

__attribute__((used)) static void
config_get_hosts(krb5_context context, struct krb5_krbhst_data *kd,
   const char *conf_string)
{
    int i;
    char **hostlist;
    hostlist = krb5_config_get_strings(context, ((void*)0),
           "realms", kd->realm, conf_string, ((void*)0));

    _krb5_debug(context, 2, "configuration file for realm %s%s found",
  kd->realm, hostlist ? "" : " not");

    if(hostlist == ((void*)0))
 return;
    kd->flags |= KD_CONFIG_EXISTS;
    for(i = 0; hostlist && hostlist[i] != ((void*)0); i++)
 append_host_string(context, kd, hostlist[i], kd->def_port, kd->port);

    krb5_config_free_strings(hostlist);
}
