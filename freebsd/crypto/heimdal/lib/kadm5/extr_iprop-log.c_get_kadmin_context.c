
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
typedef int kadm5_server_context ;
struct TYPE_4__ {char* realm; int mask; } ;
typedef TYPE_1__ kadm5_config_params ;
typedef int conf ;


 int KADM5_ADMIN_SERVICE ;
 int KADM5_CONFIG_REALM ;
 int asprintf (char**,char*,int ) ;
 int context ;
 int errx (int,char*) ;
 int hdb_db_dir (int ) ;
 scalar_t__ kadm5_init_with_password_ctx (int ,int ,int *,int ,TYPE_1__*,int ,int ,void**) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_free_config_files (char**) ;
 scalar_t__ krb5_prepend_config_files_default (char const*,char***) ;
 scalar_t__ krb5_set_config_files (int ,char**) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static kadm5_server_context *
get_kadmin_context(const char *config_file, char *realm)
{
    kadm5_config_params conf;
    krb5_error_code ret;
    void *kadm_handle;
    char **files;

    if (config_file == ((void*)0)) {
 char *file;
 asprintf(&file, "%s/kdc.conf", hdb_db_dir(context));
 if (file == ((void*)0))
     errx(1, "out of memory");
 config_file = file;
    }

    ret = krb5_prepend_config_files_default(config_file, &files);
    if (ret)
 krb5_err(context, 1, ret, "getting configuration files");

    ret = krb5_set_config_files(context, files);
    krb5_free_config_files(files);
    if (ret)
 krb5_err(context, 1, ret, "reading configuration files");

    memset(&conf, 0, sizeof(conf));
    if(realm) {
 conf.mask |= KADM5_CONFIG_REALM;
 conf.realm = realm;
    }

    ret = kadm5_init_with_password_ctx (context,
     KADM5_ADMIN_SERVICE,
     ((void*)0),
     KADM5_ADMIN_SERVICE,
     &conf, 0, 0,
     &kadm_handle);
    if (ret)
 krb5_err (context, 1, ret, "kadm5_init_with_password_ctx");

    return (kadm5_server_context *)kadm_handle;
}
