
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_prompter_fct ;
typedef int * krb5_principal ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int * krb5_ccache ;


 char* KADM5_ADMIN_SERVICE ;
 scalar_t__ KADM5_FAILURE ;
 scalar_t__ get_cache_principal (int ,int **,int **) ;
 char* get_default_username () ;
 scalar_t__ get_kadm_ticket (int ,int *,int *,char const*) ;
 scalar_t__ get_new_cache (int ,int *,char const*,int ,char const*,char const*,int **) ;
 int krb5_cc_close (int ,int *) ;
 scalar_t__ krb5_cc_get_principal (int ,int *,int **) ;
 int krb5_free_principal (int ,int *) ;
 scalar_t__ krb5_make_principal (int ,int **,int *,char const*,char*,int *) ;
 scalar_t__ krb5_parse_name (int ,char const*,int **) ;
 scalar_t__ krb5_principal_compare (int ,int *,int *) ;
 int krb5_set_error_message (int ,scalar_t__,char*) ;

krb5_error_code
_kadm5_c_get_cred_cache(krb5_context context,
   const char *client_name,
   const char *server_name,
   const char *password,
   krb5_prompter_fct prompter,
   const char *keytab,
   krb5_ccache ccache,
   krb5_ccache *ret_cache)
{
    krb5_error_code ret;
    krb5_ccache id = ((void*)0);
    krb5_principal default_client = ((void*)0), client = ((void*)0);


    if(password && *password == '\0')
 password = ((void*)0);
    if(server_name == ((void*)0))
 server_name = KADM5_ADMIN_SERVICE;

    if(client_name != ((void*)0)) {
 ret = krb5_parse_name(context, client_name, &client);
 if(ret)
     return ret;
    }

    if(ccache != ((void*)0)) {
 id = ccache;
 ret = krb5_cc_get_principal(context, id, &client);
 if(ret)
     return ret;
    } else {


 ret = get_cache_principal(context, &id, &default_client);
 if (ret) {




     const char *user;

     user = get_default_username ();

     if(user == ((void*)0)) {
  krb5_set_error_message(context, KADM5_FAILURE, "Unable to find local user name");
  return KADM5_FAILURE;
     }
     ret = krb5_make_principal(context, &default_client,
          ((void*)0), user, "admin", ((void*)0));
     if(ret)
  return ret;
 }
    }






    if (client == ((void*)0) && default_client != ((void*)0))
 client = default_client;


    if(id && client && (default_client == ((void*)0) ||
       krb5_principal_compare(context, client, default_client) != 0)) {
 ret = get_kadm_ticket(context, id, client, server_name);
 if(ret == 0) {
     *ret_cache = id;
     krb5_free_principal(context, default_client);
     if (default_client != client)
  krb5_free_principal(context, client);
     return 0;
 }
 if(ccache != ((void*)0))

     return -1;
    }

    if(id && (id != ccache))
 krb5_cc_close(context, id);
    if (client != default_client)
 krb5_free_principal(context, default_client);

    ret = get_new_cache(context, client, password, prompter, keytab,
   server_name, ret_cache);
    krb5_free_principal(context, client);
    return ret;
}
