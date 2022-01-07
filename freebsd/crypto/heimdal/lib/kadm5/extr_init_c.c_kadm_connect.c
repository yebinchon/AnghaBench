
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; scalar_t__ realm; int mask; struct addrinfo* ai_next; } ;
typedef scalar_t__ rk_socket_t ;
typedef int portstr ;
typedef int p ;
typedef int krb5_principal ;
typedef int krb5_data ;
typedef int krb5_context ;
typedef int krb5_ccache ;
typedef scalar_t__ kadm5_ret_t ;
typedef struct addrinfo kadm5_config_params ;
struct TYPE_3__ {char* admin_server; scalar_t__ sock; int * ccache; int * ac; scalar_t__ realm; int keytab; int prompter; int service_name; int client_name; int kadmind_port; int context; } ;
typedef TYPE_1__ kadm5_client_context ;
typedef int hints ;


 int AP_OPTS_MUTUAL_REQUIRED ;
 scalar_t__ ENOMEM ;
 int IPPROTO_TCP ;
 int KADM5_ADMIN_SERVICE ;
 scalar_t__ KADM5_BAD_SERVER_NAME ;
 int KADM5_CONFIG_REALM ;
 scalar_t__ KADM5_FAILURE ;
 int KADMIN_APPL_VERSION ;
 int KADMIN_OLD_APPL_VERSION ;
 scalar_t__ KRB5_SENDAUTH_BADAPPLVERS ;
 int NI_MAXSERV ;
 int SOCK_STREAM ;
 scalar_t__ _kadm5_c_get_cred_cache (int ,int ,int ,int *,int ,int ,int *,int *) ;
 scalar_t__ _kadm5_marshal_params (int ,struct addrinfo*,int *) ;
 int asprintf (char**,char*,int ,...) ;
 scalar_t__ connect (scalar_t__,int ,int ) ;
 scalar_t__ errno ;
 int free (char*) ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char*,char*,struct addrinfo*,struct addrinfo**) ;
 int krb5_cc_close (int ,int ) ;
 int krb5_clear_error_message (int ) ;
 int krb5_data_free (int *) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_parse_name (int ,char*,int *) ;
 scalar_t__ krb5_sendauth (int ,int **,scalar_t__*,int ,int *,int ,int ,int *,int *,int ,int *,int *,int *) ;
 int krb5_warn (int ,scalar_t__,char*,char*) ;
 int krb5_warnx (int ,char*,char*) ;
 scalar_t__ krb5_write_priv_message (int ,int *,scalar_t__*,int *) ;
 int memset (struct addrinfo*,int ,int) ;
 int ntohs (int ) ;
 scalar_t__ rk_INVALID_SOCKET ;
 int rk_closesocket (scalar_t__) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ socket (int ,int ,int ) ;
 char* strchr (char*,char) ;

__attribute__((used)) static kadm5_ret_t
kadm_connect(kadm5_client_context *ctx)
{
    kadm5_ret_t ret;
    krb5_principal server;
    krb5_ccache cc;
    rk_socket_t s = rk_INVALID_SOCKET;
    struct addrinfo *ai, *a;
    struct addrinfo hints;
    int error;
    char portstr[NI_MAXSERV];
    char *hostname, *slash;
    char *service_name;
    krb5_context context = ctx->context;

    memset (&hints, 0, sizeof(hints));
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_protocol = IPPROTO_TCP;

    snprintf (portstr, sizeof(portstr), "%u", ntohs(ctx->kadmind_port));

    hostname = ctx->admin_server;
    slash = strchr (hostname, '/');
    if (slash != ((void*)0))
 hostname = slash + 1;

    error = getaddrinfo (hostname, portstr, &hints, &ai);
    if (error) {
 krb5_clear_error_message(context);
 return KADM5_BAD_SERVER_NAME;
    }

    for (a = ai; a != ((void*)0); a = a->ai_next) {
 s = socket (a->ai_family, a->ai_socktype, a->ai_protocol);
 if (s < 0)
     continue;
 if (connect (s, a->ai_addr, a->ai_addrlen) < 0) {
     krb5_clear_error_message(context);
     krb5_warn (context, errno, "connect(%s)", hostname);
     rk_closesocket (s);
     continue;
 }
 break;
    }
    if (a == ((void*)0)) {
 freeaddrinfo (ai);
 krb5_clear_error_message(context);
 krb5_warnx (context, "failed to contact %s", hostname);
 return KADM5_FAILURE;
    }
    ret = _kadm5_c_get_cred_cache(context,
      ctx->client_name,
      ctx->service_name,
      ((void*)0), ctx->prompter, ctx->keytab,
      ctx->ccache, &cc);

    if(ret) {
 freeaddrinfo (ai);
 rk_closesocket(s);
 return ret;
    }

    if (ctx->realm)
 asprintf(&service_name, "%s@%s", KADM5_ADMIN_SERVICE, ctx->realm);
    else
 asprintf(&service_name, "%s", KADM5_ADMIN_SERVICE);

    if (service_name == ((void*)0)) {
 freeaddrinfo (ai);
 rk_closesocket(s);
 krb5_clear_error_message(context);
 return ENOMEM;
    }

    ret = krb5_parse_name(context, service_name, &server);
    free(service_name);
    if(ret) {
 freeaddrinfo (ai);
 if(ctx->ccache == ((void*)0))
     krb5_cc_close(context, cc);
 rk_closesocket(s);
 return ret;
    }
    ctx->ac = ((void*)0);

    ret = krb5_sendauth(context, &ctx->ac, &s,
   KADMIN_APPL_VERSION, ((void*)0),
   server, AP_OPTS_MUTUAL_REQUIRED,
   ((void*)0), ((void*)0), cc, ((void*)0), ((void*)0), ((void*)0));
    if(ret == 0) {
 krb5_data params;
 kadm5_config_params p;
 memset(&p, 0, sizeof(p));
 if(ctx->realm) {
     p.mask |= KADM5_CONFIG_REALM;
     p.realm = ctx->realm;
 }
 ret = _kadm5_marshal_params(context, &p, &params);

 ret = krb5_write_priv_message(context, ctx->ac, &s, &params);
 krb5_data_free(&params);
 if(ret) {
     freeaddrinfo (ai);
     rk_closesocket(s);
     if(ctx->ccache == ((void*)0))
  krb5_cc_close(context, cc);
     return ret;
 }
    } else if(ret == KRB5_SENDAUTH_BADAPPLVERS) {
 rk_closesocket(s);

 s = socket (a->ai_family, a->ai_socktype, a->ai_protocol);
 if (s < 0) {
     freeaddrinfo (ai);
     krb5_clear_error_message(context);
     return errno;
 }
 if (connect (s, a->ai_addr, a->ai_addrlen) < 0) {
     rk_closesocket (s);
     freeaddrinfo (ai);
     krb5_clear_error_message(context);
     return errno;
 }
 ret = krb5_sendauth(context, &ctx->ac, &s,
       KADMIN_OLD_APPL_VERSION, ((void*)0),
       server, AP_OPTS_MUTUAL_REQUIRED,
       ((void*)0), ((void*)0), cc, ((void*)0), ((void*)0), ((void*)0));
    }
    freeaddrinfo (ai);
    if(ret) {
 rk_closesocket(s);
 return ret;
    }

    krb5_free_principal(context, server);
    if(ctx->ccache == ((void*)0))
 krb5_cc_close(context, cc);
    ctx->sock = s;

    return 0;
}
