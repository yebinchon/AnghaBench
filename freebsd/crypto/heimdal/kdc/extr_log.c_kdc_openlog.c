
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int logf; } ;
typedef TYPE_1__ krb5_kdc_configuration ;
typedef int krb5_context ;


 int KDC_LOG_FILE ;
 scalar_t__ asprintf (char**,char*,int ,int ) ;
 int err (int,int *) ;
 int free (char*) ;
 int hdb_db_dir (int ) ;
 int krb5_addlog_dest (int ,int ,char*) ;
 int krb5_config_free_strings (char**) ;
 char** krb5_config_get_strings (int ,int *,char const*,char const*,int *) ;
 int krb5_initlog (int ,char*,int *) ;
 int krb5_set_warn_dest (int ,int ) ;

void
kdc_openlog(krb5_context context,
     const char *service,
     krb5_kdc_configuration *config)
{
    char **s = ((void*)0), **p;
    krb5_initlog(context, "kdc", &config->logf);
    s = krb5_config_get_strings(context, ((void*)0), service, "logging", ((void*)0));
    if(s == ((void*)0))
 s = krb5_config_get_strings(context, ((void*)0), "logging", service, ((void*)0));
    if(s){
 for(p = s; *p; p++)
     krb5_addlog_dest(context, config->logf, *p);
 krb5_config_free_strings(s);
    }else {
 char *ss;
 if (asprintf(&ss, "0-1/FILE:%s/%s", hdb_db_dir(context),
     KDC_LOG_FILE) < 0)
     err(1, ((void*)0));
 krb5_addlog_dest(context, config->logf, ss);
 free(ss);
    }
    krb5_set_warn_dest(context, config->logf);
}
