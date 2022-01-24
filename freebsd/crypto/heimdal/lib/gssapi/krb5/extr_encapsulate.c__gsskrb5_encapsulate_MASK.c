#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_5__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ krb5_data ;
typedef  TYPE_2__* gss_buffer_t ;
typedef  int /*<<< orphan*/  gss_OID ;
struct TYPE_6__ {size_t length; int /*<<< orphan*/ * value; } ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GSS_S_COMPLETE ; 
 int /*<<< orphan*/  GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t*,size_t*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t,void const*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

OM_uint32
FUNC4(
			OM_uint32 *minor_status,
			const krb5_data *in_data,
			gss_buffer_t output_token,
			const void *type,
			const gss_OID mech
)
{
    size_t len, outer_len;
    u_char *p;

    FUNC0 (in_data->length, &len, &outer_len, mech);

    output_token->length = outer_len;
    output_token->value  = FUNC2 (outer_len);
    if (output_token->value == NULL) {
	*minor_status = ENOMEM;
	return GSS_S_FAILURE;
    }

    p = FUNC1 (output_token->value, len, type, mech);
    FUNC3 (p, in_data->data, in_data->length);
    return GSS_S_COMPLETE;
}