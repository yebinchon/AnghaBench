
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_6__ {int server; int client; } ;
typedef TYPE_1__ krb5_creds ;
typedef int krb5_context ;
typedef int krb5_ccache ;
typedef int in ;


 int krb5_free_creds (int ,TYPE_1__*) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_get_credentials (int ,int ,int ,TYPE_1__*,TYPE_1__**) ;
 scalar_t__ krb5_parse_name (int ,char const*,int *) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static krb5_error_code
get_kadm_ticket(krb5_context context,
  krb5_ccache id,
  krb5_principal client,
  const char *server_name)
{
    krb5_error_code ret;
    krb5_creds in, *out;

    memset(&in, 0, sizeof(in));
    in.client = client;
    ret = krb5_parse_name(context, server_name, &in.server);
    if(ret)
 return ret;
    ret = krb5_get_credentials(context, 0, id, &in, &out);
    if(ret == 0)
 krb5_free_creds(context, out);
    krb5_free_principal(context, in.server);
    return ret;
}
