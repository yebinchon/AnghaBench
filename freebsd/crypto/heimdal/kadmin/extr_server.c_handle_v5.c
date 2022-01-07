
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int realm_params ;
struct TYPE_6__ {int initial; } ;
struct TYPE_7__ {TYPE_1__ flags; } ;
struct TYPE_8__ {int client; TYPE_2__ ticket; int server; } ;
typedef TYPE_3__ krb5_ticket ;
typedef int krb5_socket_t ;
typedef int krb5_keytab ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_data ;
typedef int krb5_context ;
typedef int krb5_boolean ;
typedef int * krb5_auth_context ;
typedef int kadm5_config_params ;


 int KADM5_ADMIN_SERVICE ;
 int KRB5_RECVAUTH_IGNORE_VERSION ;
 int _kadm5_unmarshal_params (int ,int *,int *) ;
 int free (char*) ;
 scalar_t__ kadm5_s_init_with_password_ctx (int ,char*,int *,int ,int *,int ,int ,void**) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_errx (int ,int,char*,char*) ;
 int krb5_free_ticket (int ,TYPE_3__*) ;
 scalar_t__ krb5_read_priv_message (int ,int *,int *,int *) ;
 scalar_t__ krb5_recvauth_match_version (int ,int **,int *,int ,unsigned int*,int *,int ,int ,TYPE_3__**) ;
 scalar_t__ krb5_unparse_name (int ,int ,char**) ;
 int match_appl_version ;
 int memset (int *,int ,int) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char*,int ,int ) ;
 int v5_loop (int ,int *,int ,void*,int ) ;

__attribute__((used)) static void
handle_v5(krb5_context contextp,
   krb5_keytab keytab,
   krb5_socket_t fd)
{
    krb5_error_code ret;
    krb5_ticket *ticket;
    char *server_name;
    char *client;
    void *kadm_handlep;
    krb5_boolean initial;
    krb5_auth_context ac = ((void*)0);

    unsigned kadm_version;
    kadm5_config_params realm_params;

    ret = krb5_recvauth_match_version(contextp, &ac, &fd,
          match_appl_version, &kadm_version,
          ((void*)0), KRB5_RECVAUTH_IGNORE_VERSION,
          keytab, &ticket);
    if (ret)
 krb5_err(contextp, 1, ret, "krb5_recvauth");

    ret = krb5_unparse_name (contextp, ticket->server, &server_name);
    if (ret)
 krb5_err (contextp, 1, ret, "krb5_unparse_name");

    if (strncmp (server_name, KADM5_ADMIN_SERVICE,
   strlen(KADM5_ADMIN_SERVICE)) != 0)
 krb5_errx (contextp, 1, "ticket for strange principal (%s)",
     server_name);

    free (server_name);

    memset(&realm_params, 0, sizeof(realm_params));

    if(kadm_version == 1) {
 krb5_data params;
 ret = krb5_read_priv_message(contextp, ac, &fd, &params);
 if(ret)
     krb5_err(contextp, 1, ret, "krb5_read_priv_message");
 _kadm5_unmarshal_params(contextp, &params, &realm_params);
    }

    initial = ticket->ticket.flags.initial;
    ret = krb5_unparse_name(contextp, ticket->client, &client);
    if (ret)
 krb5_err (contextp, 1, ret, "krb5_unparse_name");
    krb5_free_ticket (contextp, ticket);
    ret = kadm5_s_init_with_password_ctx(contextp,
      client,
      ((void*)0),
      KADM5_ADMIN_SERVICE,
      &realm_params,
      0, 0,
      &kadm_handlep);
    if(ret)
 krb5_err (contextp, 1, ret, "kadm5_init_with_password_ctx");
    v5_loop (contextp, ac, initial, kadm_handlep, fd);
}
