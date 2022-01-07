
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int krb5_principal ;
typedef int krb5_kdc_flags ;
typedef int krb5_error_code ;
struct TYPE_15__ {scalar_t__ len; } ;
struct TYPE_17__ {TYPE_2__* server; TYPE_1__ addresses; } ;
typedef TYPE_3__ krb5_creds ;
typedef int krb5_context ;
typedef int krb5_ccache ;
typedef int krb5_boolean ;
struct TYPE_18__ {scalar_t__ len; int * member_1; int member_0; } ;
typedef TYPE_4__ krb5_addresses ;
typedef int Ticket ;
struct TYPE_16__ {int realm; } ;


 int FALSE ;
 int get_cred_kdc (int ,int ,int ,TYPE_4__*,TYPE_3__*,TYPE_3__*,int ,int *,TYPE_3__*) ;
 int krb5_appdefault_boolean (int ,int *,int ,char*,int ,int *) ;
 int krb5_free_addresses (int ,TYPE_4__*) ;
 int krb5_get_all_client_addrs (int ,TYPE_4__*) ;

__attribute__((used)) static krb5_error_code
get_cred_kdc_address(krb5_context context,
       krb5_ccache id,
       krb5_kdc_flags flags,
       krb5_addresses *addrs,
       krb5_creds *in_creds,
       krb5_creds *krbtgt,
       krb5_principal impersonate_principal,
       Ticket *second_ticket,
       krb5_creds *out_creds)
{
    krb5_error_code ret;
    krb5_addresses addresses = { 0, ((void*)0) };






    if (addrs == ((void*)0) && krbtgt->addresses.len != 0) {
 krb5_boolean noaddr;

 krb5_appdefault_boolean(context, ((void*)0), krbtgt->server->realm,
    "no-addresses", FALSE, &noaddr);

 if (!noaddr) {
     krb5_get_all_client_addrs(context, &addresses);

     addrs = &addresses;
     if(addresses.len == 0)
  addrs = ((void*)0);
 }
    }
    ret = get_cred_kdc(context, id, flags, addrs, in_creds,
         krbtgt, impersonate_principal,
         second_ticket, out_creds);
    krb5_free_addresses(context, &addresses);
    return ret;
}
