
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef size_t uint16_t ;
typedef int u_char ;
struct sockaddr {int dummy; } ;
struct TYPE_17__ {int initial; } ;
struct TYPE_19__ {TYPE_3__* caddr; TYPE_2__ flags; } ;
struct TYPE_20__ {TYPE_9__* server; TYPE_4__ ticket; TYPE_1__* client; } ;
typedef TYPE_5__ krb5_ticket ;
typedef int * krb5_realm ;
typedef int krb5_principal ;
typedef int krb5_keytab ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_21__ {int* data; size_t length; } ;
typedef TYPE_6__ krb5_data ;
typedef scalar_t__ krb5_boolean ;
typedef int krb5_auth_context ;
typedef int krb5_address ;
struct TYPE_22__ {int * realm; } ;
struct TYPE_18__ {scalar_t__ len; } ;
struct TYPE_16__ {int realm; } ;


 size_t KRB5_KPASSWD_VERS_CHANGEPW ;
 size_t KRB5_KPASSWD_VERS_SETPW ;
 scalar_t__ TRUE ;
 int context ;
 int free (char*) ;
 scalar_t__ krb5_auth_con_setaddrs (int ,int ,int *,int *) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_free_principal (int ,int ) ;
 int krb5_free_ticket (int ,TYPE_5__*) ;
 scalar_t__ krb5_make_principal (int ,int *,int *,char*,char*,int *) ;
 scalar_t__ krb5_principal_compare (int ,int ,TYPE_9__*) ;
 scalar_t__ krb5_rd_priv (int ,int ,TYPE_6__*,TYPE_6__*,int *) ;
 scalar_t__ krb5_rd_req (int ,int *,TYPE_6__*,int *,int ,int *,TYPE_5__**) ;
 int krb5_unparse_name (int ,TYPE_9__*,char**) ;
 int krb5_warn (int ,scalar_t__,char*) ;
 int krb5_warnx (int ,char*,...) ;
 int reply_error (int *,int,struct sockaddr*,int,scalar_t__,int,char*) ;
 scalar_t__ strcmp (int *,int ) ;

__attribute__((used)) static int
verify (krb5_auth_context *auth_context,
 krb5_realm *realms,
 krb5_keytab keytab,
 krb5_ticket **ticket,
 krb5_data *out_data,
 uint16_t *version,
 int s,
 struct sockaddr *sa,
 int sa_size,
 u_char *msg,
 size_t len,
 krb5_address *client_addr)
{
    krb5_error_code ret;
    uint16_t pkt_len, pkt_ver, ap_req_len;
    krb5_data ap_req_data;
    krb5_data krb_priv_data;
    krb5_realm *r;
    pkt_len = (msg[0] << 8) | (msg[1]);
    pkt_ver = (msg[2] << 8) | (msg[3]);
    ap_req_len = (msg[4] << 8) | (msg[5]);
    if (pkt_len != len) {
 krb5_warnx (context, "Strange len: %ld != %ld",
      (long)pkt_len, (long)len);
 return 1;
    }
    if (ap_req_len == 0) {
 krb5_warnx (context, "Request is error packet (ap_req_len == 0)");
 return 1;
    }
    if (pkt_ver != KRB5_KPASSWD_VERS_CHANGEPW &&
 pkt_ver != KRB5_KPASSWD_VERS_SETPW) {
 krb5_warnx (context, "Bad version (%d)", pkt_ver);
 reply_error (((void*)0), s, sa, sa_size, 0, 1, "Wrong program version");
 return 1;
    }
    *version = pkt_ver;

    ap_req_data.data = msg + 6;
    ap_req_data.length = ap_req_len;

    ret = krb5_rd_req (context,
         auth_context,
         &ap_req_data,
         ((void*)0),
         keytab,
         ((void*)0),
         ticket);
    if (ret) {
 krb5_warn (context, ret, "krb5_rd_req");
 reply_error (((void*)0), s, sa, sa_size, ret, 3, "Authentication failed");
 return 1;
    }


    for (r = realms; *r != ((void*)0); r++) {
 krb5_principal principal;
 krb5_boolean same;

 ret = krb5_make_principal (context,
       &principal,
       *r,
       "kadmin",
       "changepw",
       ((void*)0));
 if (ret)
     krb5_err (context, 1, ret, "krb5_make_principal");

 same = krb5_principal_compare(context, principal, (*ticket)->server);
 krb5_free_principal(context, principal);
 if (same == TRUE)
     break;
    }
    if (*r == ((void*)0)) {
 char *str;
 krb5_unparse_name(context, (*ticket)->server, &str);
 krb5_warnx (context, "client used not valid principal %s", str);
 free(str);
 reply_error (((void*)0), s, sa, sa_size, ret, 1,
       "Bad request");
 goto out;
    }

    if (strcmp((*ticket)->server->realm, (*ticket)->client->realm) != 0) {
 krb5_warnx (context, "server realm (%s) not same a client realm (%s)",
      (*ticket)->server->realm, (*ticket)->client->realm);
 reply_error ((*ticket)->server->realm, s, sa, sa_size, ret, 1,
       "Bad request");
 goto out;
    }

    if (!(*ticket)->ticket.flags.initial) {
 krb5_warnx (context, "initial flag not set");
 reply_error ((*ticket)->server->realm, s, sa, sa_size, ret, 1,
       "Bad request");
 goto out;
    }
    krb_priv_data.data = msg + 6 + ap_req_len;
    krb_priv_data.length = len - 6 - ap_req_len;







    if ((*ticket)->ticket.caddr && (*ticket)->ticket.caddr->len > 0) {
 ret = krb5_auth_con_setaddrs (context, *auth_context,
          ((void*)0), client_addr);
 if (ret) {
     krb5_warn (context, ret, "krb5_auth_con_setaddr(this)");
     goto out;
 }
    }

    ret = krb5_rd_priv (context,
   *auth_context,
   &krb_priv_data,
   out_data,
   ((void*)0));

    if (ret) {
 krb5_warn (context, ret, "krb5_rd_priv");
 reply_error ((*ticket)->server->realm, s, sa, sa_size, ret, 3,
       "Bad request");
 goto out;
    }
    return 0;
out:
    krb5_free_ticket (context, *ticket);
    ticket = ((void*)0);
    return 1;
}
