
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u_char ;
struct sockaddr {int dummy; } ;
typedef int other_addr ;
struct TYPE_9__ {int client; } ;
typedef TYPE_1__ krb5_ticket ;
typedef int krb5_realm ;
typedef int krb5_keytab ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_10__ {int length; int * data; } ;
typedef TYPE_2__ krb5_data ;
typedef int * krb5_auth_context ;
typedef int krb5_address ;


 int KRB5_AUTH_CONTEXT_DO_SEQUENCE ;
 int change (int *,int ,int ,int,struct sockaddr*,int,TYPE_2__*) ;
 int context ;
 int krb5_auth_con_free (int ,int *) ;
 scalar_t__ krb5_auth_con_init (int ,int **) ;
 scalar_t__ krb5_auth_con_setaddrs (int ,int *,int *,int *) ;
 int krb5_auth_con_setflags (int ,int *,int ) ;
 int krb5_data_free (TYPE_2__*) ;
 int krb5_data_zero (TYPE_2__*) ;
 int krb5_free_address (int ,int *) ;
 int krb5_free_ticket (int ,TYPE_1__*) ;
 scalar_t__ krb5_sockaddr2address (int ,struct sockaddr*,int *) ;
 int krb5_warn (int ,scalar_t__,char*) ;
 int memset (int *,int ,int) ;
 scalar_t__ verify (int **,int *,int ,TYPE_1__**,TYPE_2__*,int *,int,struct sockaddr*,int,int *,int,int *) ;

__attribute__((used)) static void
process (krb5_realm *realms,
  krb5_keytab keytab,
  int s,
  krb5_address *this_addr,
  struct sockaddr *sa,
  int sa_size,
  u_char *msg,
  int len)
{
    krb5_error_code ret;
    krb5_auth_context auth_context = ((void*)0);
    krb5_data out_data;
    krb5_ticket *ticket;
    krb5_address other_addr;
    uint16_t version;

    memset(&other_addr, 0, sizeof(other_addr));
    krb5_data_zero (&out_data);

    ret = krb5_auth_con_init (context, &auth_context);
    if (ret) {
 krb5_warn (context, ret, "krb5_auth_con_init");
 return;
    }

    krb5_auth_con_setflags (context, auth_context,
       KRB5_AUTH_CONTEXT_DO_SEQUENCE);

    ret = krb5_sockaddr2address (context, sa, &other_addr);
    if (ret) {
 krb5_warn (context, ret, "krb5_sockaddr2address");
 goto out;
    }

    ret = krb5_auth_con_setaddrs (context, auth_context, this_addr, ((void*)0));
    if (ret) {
 krb5_warn (context, ret, "krb5_auth_con_setaddr(this)");
 goto out;
    }

    if (verify (&auth_context, realms, keytab, &ticket, &out_data,
  &version, s, sa, sa_size, msg, len, &other_addr) == 0)
    {





 ret = krb5_auth_con_setaddrs (context, auth_context,
          this_addr, &other_addr);
 if (ret) {
     krb5_warn (context, ret, "krb5_auth_con_setaddr(other)");
     goto out;
 }

 change (auth_context,
  ticket->client,
  version,
  s,
  sa, sa_size,
  &out_data);
 memset (out_data.data, 0, out_data.length);
 krb5_free_ticket (context, ticket);
    }

out:
    krb5_free_address(context, &other_addr);
    krb5_data_free(&out_data);
    krb5_auth_con_free(context, auth_context);
}
