
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_8__ {scalar_t__ check_ticket_addresses; scalar_t__ allow_null_ticket_addresses; } ;
typedef TYPE_2__ krb5_kdc_configuration ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef scalar_t__ krb5_boolean ;
typedef int krb5_address ;
struct TYPE_9__ {size_t len; TYPE_1__* val; } ;
struct TYPE_7__ {scalar_t__ addr_type; } ;
typedef TYPE_3__ HostAddresses ;


 scalar_t__ FALSE ;
 scalar_t__ KRB5_ADDRESS_NETBIOS ;
 scalar_t__ TRUE ;
 scalar_t__ krb5_address_search (int ,int *,TYPE_3__*) ;
 int krb5_free_address (int ,int *) ;
 scalar_t__ krb5_sockaddr2address (int ,struct sockaddr const*,int *) ;

krb5_boolean
_kdc_check_addresses(krb5_context context,
       krb5_kdc_configuration *config,
       HostAddresses *addresses, const struct sockaddr *from)
{
    krb5_error_code ret;
    krb5_address addr;
    krb5_boolean result;
    krb5_boolean only_netbios = TRUE;
    size_t i;

    if(config->check_ticket_addresses == 0)
 return TRUE;

    if(addresses == ((void*)0))
 return config->allow_null_ticket_addresses;

    for (i = 0; i < addresses->len; ++i) {
 if (addresses->val[i].addr_type != KRB5_ADDRESS_NETBIOS) {
     only_netbios = FALSE;
 }
    }







    if(only_netbios)
 return config->allow_null_ticket_addresses;

    ret = krb5_sockaddr2address (context, from, &addr);
    if(ret)
 return FALSE;

    result = krb5_address_search(context, &addr, addresses);
    krb5_free_address (context, &addr);
    return result;
}
