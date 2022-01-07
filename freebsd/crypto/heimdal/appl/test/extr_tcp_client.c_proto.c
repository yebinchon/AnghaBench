
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_8__ {char* data; int length; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_auth_context ;


 int AP_OPTS_MUTUAL_REQUIRED ;
 int KRB5_NT_SRV_HST ;
 int VERSION ;
 int context ;
 int err (int,char*) ;
 int htonl (int) ;
 scalar_t__ krb5_auth_con_init (int ,int *) ;
 scalar_t__ krb5_auth_con_setaddrs_from_fd (int ,int ,int*) ;
 int krb5_data_free (TYPE_1__*) ;
 int krb5_data_zero (TYPE_1__*) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 scalar_t__ krb5_mk_priv (int ,int ,TYPE_1__*,TYPE_1__*,int *) ;
 scalar_t__ krb5_mk_safe (int ,int ,TYPE_1__*,TYPE_1__*,int *) ;
 int krb5_net_write (int ,int*,int*,int) ;
 scalar_t__ krb5_sendauth (int ,int *,int*,int ,int *,int ,int ,int *,int *,int *,int *,int *,int *) ;
 scalar_t__ krb5_sname_to_principal (int ,char const*,char const*,int ,int *) ;

__attribute__((used)) static int
proto (int sock, const char *hostname, const char *service)
{
    krb5_auth_context auth_context;
    krb5_error_code status;
    krb5_principal server;
    krb5_data data;
    krb5_data packet;
    uint32_t len, net_len;

    status = krb5_auth_con_init (context, &auth_context);
    if (status)
 krb5_err (context, 1, status, "krb5_auth_con_init");

    status = krb5_auth_con_setaddrs_from_fd (context,
          auth_context,
          &sock);
    if (status)
 krb5_err (context, 1, status, "krb5_auth_con_setaddrs_from_fd");

    status = krb5_sname_to_principal (context,
          hostname,
          service,
          KRB5_NT_SRV_HST,
          &server);
    if (status)
 krb5_err (context, 1, status, "krb5_sname_to_principal");

    status = krb5_sendauth (context,
       &auth_context,
       &sock,
       VERSION,
       ((void*)0),
       server,
       AP_OPTS_MUTUAL_REQUIRED,
       ((void*)0),
       ((void*)0),
       ((void*)0),
       ((void*)0),
       ((void*)0),
       ((void*)0));
    if (status)
 krb5_err (context, 1, status, "krb5_sendauth");

    data.data = "hej";
    data.length = 3;

    krb5_data_zero (&packet);

    status = krb5_mk_safe (context,
      auth_context,
      &data,
      &packet,
      ((void*)0));
    if (status)
 krb5_err (context, 1, status, "krb5_mk_safe");

    len = packet.length;
    net_len = htonl(len);

    if (krb5_net_write (context, &sock, &net_len, 4) != 4)
 err (1, "krb5_net_write");
    if (krb5_net_write (context, &sock, packet.data, len) != len)
 err (1, "krb5_net_write");

    data.data = "hemligt";
    data.length = 7;

    krb5_data_free (&packet);

    status = krb5_mk_priv (context,
      auth_context,
      &data,
      &packet,
      ((void*)0));
    if (status)
 krb5_err (context, 1, status, "krb5_mk_priv");

    len = packet.length;
    net_len = htonl(len);

    if (krb5_net_write (context, &sock, &net_len, 4) != 4)
 err (1, "krb5_net_write");
    if (krb5_net_write (context, &sock, packet.data, len) != len)
 err (1, "krb5_net_write");
    return 0;
}
