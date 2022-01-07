
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
struct TYPE_4__ {char* admin_server; int * realm; int mask; int kadmind_port; } ;
typedef TYPE_1__ kadm5_config_params ;
typedef int conf ;


 int KADM5_ADMIN_SERVICE ;
 int KADM5_CONFIG_ADMIN_SERVER ;
 int KADM5_CONFIG_KADMIND_PORT ;
 int KADM5_CONFIG_REALM ;
 int context ;
 int free (int *) ;
 int htons (int) ;
 scalar_t__ kadm5_init_with_password_ctx (int ,char*,int *,int ,TYPE_1__*,int ,int ,void**) ;
 int krb5_set_error_message (int ,int ,char*) ;
 int krb5_warn (int ,scalar_t__,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int * strdup (char const*) ;

__attribute__((used)) static void*
open_kadmin_connection(char *principal,
         const char *realm,
         char *admin_server,
         int server_port)
{
    static kadm5_config_params conf;
    krb5_error_code ret;
    void *kadm_handle;
    memset(&conf, 0, sizeof(conf));

    if(realm) {
 conf.realm = strdup(realm);
 if (conf.realm == ((void*)0)) {
     krb5_set_error_message(context, 0, "malloc: out of memory");
     return ((void*)0);
 }
 conf.mask |= KADM5_CONFIG_REALM;
    }

    if (admin_server) {
 conf.admin_server = admin_server;
 conf.mask |= KADM5_CONFIG_ADMIN_SERVER;
    }

    if (server_port) {
 conf.kadmind_port = htons(server_port);
 conf.mask |= KADM5_CONFIG_KADMIND_PORT;
    }




    ret = kadm5_init_with_password_ctx(context,
           principal,
           ((void*)0),
           KADM5_ADMIN_SERVICE,
           &conf, 0, 0,
           &kadm_handle);
    free(conf.realm);
    if(ret) {
 krb5_warn(context, ret, "kadm5_init_with_password");
 return ((void*)0);
    }
    return kadm_handle;
}
