
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef scalar_t__ kadm5_ret_t ;
struct TYPE_11__ {int mask; char* realm; char* admin_server; scalar_t__ kadmind_port; } ;
typedef TYPE_1__ kadm5_config_params ;
struct TYPE_12__ {scalar_t__ kadmind_port; int * admin_server; struct TYPE_12__* realm; int context; } ;
typedef TYPE_2__ kadm5_client_context ;


 scalar_t__ ENOMEM ;
 int KADM5_CONFIG_ADMIN_SERVER ;
 int KADM5_CONFIG_KADMIND_PORT ;
 int KADM5_CONFIG_REALM ;
 int free (TYPE_2__*) ;
 scalar_t__ htons (int ) ;
 int initialize_kadm5_error_table_r ;
 int krb5_add_et_list (int ,int ) ;
 int krb5_free_krbhst (int ,char**) ;
 scalar_t__ krb5_get_default_realm (int ,TYPE_2__**) ;
 scalar_t__ krb5_get_krb_admin_hst (int ,TYPE_2__**,char***) ;
 scalar_t__ krb5_getportbyname (int ,char*,char*,int) ;
 TYPE_2__* malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int set_funcs (TYPE_2__*) ;
 char* strchr (int *,char) ;
 void* strdup (char*) ;
 int strtol (char*,char**,int ) ;

kadm5_ret_t
_kadm5_c_init_context(kadm5_client_context **ctx,
        kadm5_config_params *params,
        krb5_context context)
{
    krb5_error_code ret;
    char *colon;

    *ctx = malloc(sizeof(**ctx));
    if(*ctx == ((void*)0))
 return ENOMEM;
    memset(*ctx, 0, sizeof(**ctx));
    krb5_add_et_list (context, initialize_kadm5_error_table_r);
    set_funcs(*ctx);
    (*ctx)->context = context;
    if(params->mask & KADM5_CONFIG_REALM) {
 ret = 0;
 (*ctx)->realm = strdup(params->realm);
 if ((*ctx)->realm == ((void*)0))
     ret = ENOMEM;
    } else
 ret = krb5_get_default_realm((*ctx)->context, &(*ctx)->realm);
    if (ret) {
 free(*ctx);
 return ret;
    }
    if(params->mask & KADM5_CONFIG_ADMIN_SERVER)
 (*ctx)->admin_server = strdup(params->admin_server);
    else {
 char **hostlist;

 ret = krb5_get_krb_admin_hst (context, &(*ctx)->realm, &hostlist);
 if (ret) {
     free((*ctx)->realm);
     free(*ctx);
     return ret;
 }
 (*ctx)->admin_server = strdup(*hostlist);
 krb5_free_krbhst (context, hostlist);
    }

    if ((*ctx)->admin_server == ((void*)0)) {
 free((*ctx)->realm);
 free(*ctx);
 return ENOMEM;
    }
    colon = strchr ((*ctx)->admin_server, ':');
    if (colon != ((void*)0))
 *colon++ = '\0';

    (*ctx)->kadmind_port = 0;

    if(params->mask & KADM5_CONFIG_KADMIND_PORT)
 (*ctx)->kadmind_port = params->kadmind_port;
    else if (colon != ((void*)0)) {
 char *end;

 (*ctx)->kadmind_port = htons(strtol (colon, &end, 0));
    }
    if ((*ctx)->kadmind_port == 0)
 (*ctx)->kadmind_port = krb5_getportbyname (context, "kerberos-adm",
         "tcp", 749);
    return 0;
}
