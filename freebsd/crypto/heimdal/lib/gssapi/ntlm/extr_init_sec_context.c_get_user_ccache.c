
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ntlm_buf {int * data; int length; } ;
typedef TYPE_1__* ntlm_name ;
typedef int krb5_principal ;
typedef int krb5_error_code ;
struct TYPE_8__ {int length; int data; } ;
typedef TYPE_2__ krb5_data ;
typedef int * krb5_context ;
typedef int * krb5_ccache ;
struct TYPE_7__ {int domain; } ;


 int ENOMEM ;
 int KRB5_PRINCIPAL_UNPARSE_NO_REALM ;
 int asprintf (char**,char*,int ) ;
 int krb5_cc_close (int *,int *) ;
 int krb5_cc_default (int *,int **) ;
 int krb5_cc_get_config (int *,int *,int *,char*,TYPE_2__*) ;
 int krb5_cc_get_principal (int *,int *,int *) ;
 int krb5_clear_error_message (int *) ;
 int krb5_data_free (TYPE_2__*) ;
 int krb5_data_zero (TYPE_2__*) ;
 int krb5_free_context (int *) ;
 int krb5_free_principal (int *,int ) ;
 int krb5_init_context (int **) ;
 int krb5_unparse_name_flags (int *,int ,int ,char**) ;
 int * malloc (int ) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static int
get_user_ccache(const ntlm_name name, char **username, struct ntlm_buf *key)
{
    krb5_context context = ((void*)0);
    krb5_principal client;
    krb5_ccache id = ((void*)0);
    krb5_error_code ret;
    char *confname;
    krb5_data data;

    *username = ((void*)0);
    krb5_data_zero(&data);
    key->length = 0;
    key->data = ((void*)0);

    ret = krb5_init_context(&context);
    if (ret)
 return ret;

    ret = krb5_cc_default(context, &id);
    if (ret)
 goto out;

    ret = krb5_cc_get_principal(context, id, &client);
    if (ret)
 goto out;

    ret = krb5_unparse_name_flags(context, client,
      KRB5_PRINCIPAL_UNPARSE_NO_REALM,
      username);
    krb5_free_principal(context, client);
    if (ret)
 goto out;

    asprintf(&confname, "ntlm-key-%s", name->domain);
    if (confname == ((void*)0)) {
 krb5_clear_error_message(context);
 ret = ENOMEM;
 goto out;
    }

    ret = krb5_cc_get_config(context, id, ((void*)0),
        confname, &data);
    if (ret)
 goto out;

    key->data = malloc(data.length);
    if (key->data == ((void*)0)) {
 ret = ENOMEM;
 goto out;
    }
    key->length = data.length;
    memcpy(key->data, data.data, data.length);

 out:
    krb5_data_free(&data);
    if (id)
 krb5_cc_close(context, id);

    krb5_free_context(context);

    return ret;
}
