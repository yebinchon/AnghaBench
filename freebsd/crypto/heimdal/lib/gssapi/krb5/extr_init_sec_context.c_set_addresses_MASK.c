#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  TYPE_2__* krb5_auth_context ;
typedef  int /*<<< orphan*/  krb5_address ;
typedef  void* int16_t ;
typedef  int /*<<< orphan*/  initiator_addr ;
typedef  TYPE_3__* gss_channel_bindings_t ;
typedef  int /*<<< orphan*/  acceptor_addr ;
struct TYPE_8__ {int length; int /*<<< orphan*/ * value; } ;
struct TYPE_10__ {TYPE_1__ application_data; int /*<<< orphan*/  initiator_address; int /*<<< orphan*/  initiator_addrtype; int /*<<< orphan*/  acceptor_address; int /*<<< orphan*/  acceptor_addrtype; } ;
struct TYPE_9__ {void* local_port; void* remote_port; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 TYPE_3__* const GSS_C_NO_CHANNEL_BINDINGS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static OM_uint32
FUNC5 (krb5_context context,
	       krb5_auth_context ac,
	       const gss_channel_bindings_t input_chan_bindings)
{
    /* Port numbers are expected to be in application_data.value,
     * initator's port first */

    krb5_address initiator_addr, acceptor_addr;
    krb5_error_code kret;

    if (input_chan_bindings == GSS_C_NO_CHANNEL_BINDINGS
	|| input_chan_bindings->application_data.length !=
	2 * sizeof(ac->local_port))
	return 0;

    FUNC4(&initiator_addr, 0, sizeof(initiator_addr));
    FUNC4(&acceptor_addr, 0, sizeof(acceptor_addr));

    ac->local_port =
	*(int16_t *) input_chan_bindings->application_data.value;

    ac->remote_port =
	*((int16_t *) input_chan_bindings->application_data.value + 1);

    kret = FUNC0(context,
					 input_chan_bindings->acceptor_addrtype,
					 &input_chan_bindings->acceptor_address,
					 ac->remote_port,
					 &acceptor_addr);
    if (kret)
	return kret;

    kret = FUNC0(context,
					 input_chan_bindings->initiator_addrtype,
					 &input_chan_bindings->initiator_address,
					 ac->local_port,
					 &initiator_addr);
    if (kret) {
	FUNC3 (context, &acceptor_addr);
	return kret;
    }

    kret = FUNC2(context,
				  ac,
				  &initiator_addr,  /* local address */
				  &acceptor_addr);  /* remote address */

    FUNC3 (context, &initiator_addr);
    FUNC3 (context, &acceptor_addr);

#if 0
    free(input_chan_bindings->application_data.value);
    input_chan_bindings->application_data.value = NULL;
    input_chan_bindings->application_data.length = 0;
#endif

    return kret;
}