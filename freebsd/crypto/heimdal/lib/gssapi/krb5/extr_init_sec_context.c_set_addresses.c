
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef TYPE_2__* krb5_auth_context ;
typedef int krb5_address ;
typedef void* int16_t ;
typedef int initiator_addr ;
typedef TYPE_3__* gss_channel_bindings_t ;
typedef int acceptor_addr ;
struct TYPE_8__ {int length; int * value; } ;
struct TYPE_10__ {TYPE_1__ application_data; int initiator_address; int initiator_addrtype; int acceptor_address; int acceptor_addrtype; } ;
struct TYPE_9__ {void* local_port; void* remote_port; } ;
typedef scalar_t__ OM_uint32 ;


 TYPE_3__* const GSS_C_NO_CHANNEL_BINDINGS ;
 scalar_t__ _gsskrb5i_address_to_krb5addr (int ,int ,int *,void*,int *) ;
 int free (int *) ;
 scalar_t__ krb5_auth_con_setaddrs (int ,TYPE_2__*,int *,int *) ;
 int krb5_free_address (int ,int *) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static OM_uint32
set_addresses (krb5_context context,
        krb5_auth_context ac,
        const gss_channel_bindings_t input_chan_bindings)
{



    krb5_address initiator_addr, acceptor_addr;
    krb5_error_code kret;

    if (input_chan_bindings == GSS_C_NO_CHANNEL_BINDINGS
 || input_chan_bindings->application_data.length !=
 2 * sizeof(ac->local_port))
 return 0;

    memset(&initiator_addr, 0, sizeof(initiator_addr));
    memset(&acceptor_addr, 0, sizeof(acceptor_addr));

    ac->local_port =
 *(int16_t *) input_chan_bindings->application_data.value;

    ac->remote_port =
 *((int16_t *) input_chan_bindings->application_data.value + 1);

    kret = _gsskrb5i_address_to_krb5addr(context,
      input_chan_bindings->acceptor_addrtype,
      &input_chan_bindings->acceptor_address,
      ac->remote_port,
      &acceptor_addr);
    if (kret)
 return kret;

    kret = _gsskrb5i_address_to_krb5addr(context,
      input_chan_bindings->initiator_addrtype,
      &input_chan_bindings->initiator_address,
      ac->local_port,
      &initiator_addr);
    if (kret) {
 krb5_free_address (context, &acceptor_addr);
 return kret;
    }

    kret = krb5_auth_con_setaddrs(context,
      ac,
      &initiator_addr,
      &acceptor_addr);

    krb5_free_address (context, &initiator_addr);
    krb5_free_address (context, &acceptor_addr);







    return kret;
}
