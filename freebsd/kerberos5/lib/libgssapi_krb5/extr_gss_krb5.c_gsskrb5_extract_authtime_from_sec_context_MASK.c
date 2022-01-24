#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char time_t ;
typedef  scalar_t__ gss_ctx_id_t ;
typedef  TYPE_2__* gss_buffer_set_t ;
struct TYPE_7__ {int count; TYPE_1__* elements; } ;
struct TYPE_6__ {int length; unsigned char* value; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 TYPE_2__* GSS_C_NO_BUFFER_SET ; 
 scalar_t__ GSS_C_NO_CONTEXT ; 
 int /*<<< orphan*/  GSS_KRB5_GET_AUTHTIME_X ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_FAILURE ; 
 scalar_t__ FUNC0 (scalar_t__*,scalar_t__,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,TYPE_2__**) ; 

OM_uint32
FUNC2(OM_uint32 *minor_status,
					  gss_ctx_id_t context_handle,
					  time_t *authtime)
{
    gss_buffer_set_t data_set = GSS_C_NO_BUFFER_SET;
    OM_uint32 maj_stat;

    if (context_handle == GSS_C_NO_CONTEXT) {
	*minor_status = EINVAL;
	return GSS_S_FAILURE;
    }
    
    maj_stat =
	FUNC0 (minor_status,
					context_handle,
					GSS_KRB5_GET_AUTHTIME_X,
					&data_set);
    if (maj_stat)
	return maj_stat;
    
    if (data_set == GSS_C_NO_BUFFER_SET) {
	FUNC1(minor_status, &data_set);
	*minor_status = EINVAL;
	return GSS_S_FAILURE;
    }

    if (data_set->count != 1) {
	FUNC1(minor_status, &data_set);
	*minor_status = EINVAL;
	return GSS_S_FAILURE;
    }

    if (data_set->elements[0].length != 4) {
	FUNC1(minor_status, &data_set);
	*minor_status = EINVAL;
	return GSS_S_FAILURE;
    }

    {
	unsigned char *buf = data_set->elements[0].value;
	*authtime = (buf[3] <<24) | (buf[2] << 16) | 
	    (buf[1] << 8) | (buf[0] << 0);
    }

    FUNC1(minor_status, &data_set);

    *minor_status = 0;
    return GSS_S_COMPLETE;
}