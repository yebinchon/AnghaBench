
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int krb5_principal ;
typedef scalar_t__ krb5_kvno ;
struct TYPE_6__ {int keyblock; scalar_t__ vno; int timestamp; int principal; } ;
typedef TYPE_1__ krb5_keytab_entry ;
typedef int krb5_keytab ;
typedef int krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_7__ {char* realm; char* admin_server; int mask; int kadmind_port; } ;
typedef TYPE_2__ kadm5_config_params ;
typedef int conf ;


 scalar_t__ ENOMEM ;
 int KADM5_ADMIN_SERVICE ;
 int KADM5_CONFIG_ADMIN_SERVER ;
 int KADM5_CONFIG_KADMIND_PORT ;
 int KADM5_CONFIG_REALM ;
 int context ;
 int free (char*) ;
 int htons (int) ;
 int kadm5_destroy (void*) ;
 scalar_t__ kadm5_init_with_skey_ctx (int ,char*,int ,int ,TYPE_2__*,int ,int ,void**) ;
 scalar_t__ kadm5_randkey_principal (void*,int ,int **,int*) ;
 int keytab_string ;
 int krb5_free_keyblock_contents (int ,int *) ;
 scalar_t__ krb5_kt_add_entry (int ,int ,TYPE_1__*) ;
 char* krb5_principal_get_realm (int ,int ) ;
 int krb5_set_error_message (int ,scalar_t__,char*) ;
 scalar_t__ krb5_unparse_name (int ,int ,char**) ;
 int krb5_warn (int ,scalar_t__,char*,...) ;
 int memset (TYPE_2__*,int ,int) ;
 void* strdup (char const*) ;
 int time (int *) ;

__attribute__((used)) static krb5_error_code
change_entry (krb5_keytab keytab,
       krb5_principal principal, krb5_kvno kvno,
       const char *realm, const char *admin_server, int server_port)
{
    krb5_error_code ret;
    kadm5_config_params conf;
    void *kadm_handle;
    char *client_name;
    krb5_keyblock *keys;
    int num_keys;
    int i;

    ret = krb5_unparse_name (context, principal, &client_name);
    if (ret) {
 krb5_warn (context, ret, "krb5_unparse_name");
 return ret;
    }

    memset (&conf, 0, sizeof(conf));

    if(realm == ((void*)0))
 realm = krb5_principal_get_realm(context, principal);
    conf.realm = strdup(realm);
    if (conf.realm == ((void*)0)) {
 free (client_name);
 krb5_set_error_message(context, ENOMEM, "malloc failed");
 return ENOMEM;
    }
    conf.mask |= KADM5_CONFIG_REALM;

    if (admin_server) {
 conf.admin_server = strdup(admin_server);
 if (conf.admin_server == ((void*)0)) {
     free(client_name);
     free(conf.realm);
     krb5_set_error_message(context, ENOMEM, "malloc failed");
     return ENOMEM;
 }
 conf.mask |= KADM5_CONFIG_ADMIN_SERVER;
    }

    if (server_port) {
 conf.kadmind_port = htons(server_port);
 conf.mask |= KADM5_CONFIG_KADMIND_PORT;
    }

    ret = kadm5_init_with_skey_ctx (context,
        client_name,
        keytab_string,
        KADM5_ADMIN_SERVICE,
        &conf, 0, 0,
        &kadm_handle);
    free(conf.admin_server);
    free(conf.realm);
    if (ret) {
 krb5_warn (context, ret,
     "kadm5_c_init_with_skey_ctx: %s:", client_name);
 free (client_name);
 return ret;
    }
    ret = kadm5_randkey_principal (kadm_handle, principal, &keys, &num_keys);
    kadm5_destroy (kadm_handle);
    if (ret) {
 krb5_warn(context, ret, "kadm5_randkey_principal: %s:", client_name);
 free (client_name);
 return ret;
    }
    free (client_name);
    for (i = 0; i < num_keys; ++i) {
 krb5_keytab_entry new_entry;

 new_entry.principal = principal;
 new_entry.timestamp = time (((void*)0));
 new_entry.vno = kvno + 1;
 new_entry.keyblock = keys[i];

 ret = krb5_kt_add_entry (context, keytab, &new_entry);
 if (ret)
     krb5_warn (context, ret, "krb5_kt_add_entry");
 krb5_free_keyblock_contents (context, &keys[i]);
    }
    return ret;
}
