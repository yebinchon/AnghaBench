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
struct TYPE_8__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  TYPE_2__* gsskrb5_ctx ;
typedef  int /*<<< orphan*/  gss_buffer_set_t ;
struct TYPE_10__ {int /*<<< orphan*/  length; int /*<<< orphan*/  value; } ;
typedef  TYPE_3__ gss_buffer_desc ;
struct TYPE_9__ {int /*<<< orphan*/  ctx_id_mutex; int /*<<< orphan*/ * ticket; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  GSS_C_NO_BUFFER_SET ; 
 scalar_t__ GSS_S_FAILURE ; 
 scalar_t__ GSS_S_NO_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*) ; 
 scalar_t__ FUNC3 (scalar_t__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,TYPE_1__*) ; 

__attribute__((used)) static OM_uint32 FUNC6
           (OM_uint32 *minor_status,
            const gsskrb5_ctx context_handle,
	    krb5_context context,
            unsigned ad_type,
            gss_buffer_set_t *data_set)
{
    krb5_data data;
    gss_buffer_desc ad_data;
    OM_uint32 ret;

    *minor_status = 0;
    *data_set = GSS_C_NO_BUFFER_SET;

    FUNC0(&context_handle->ctx_id_mutex);
    if (context_handle->ticket == NULL) {
	FUNC1(&context_handle->ctx_id_mutex);
	*minor_status = EINVAL;
	FUNC2(EINVAL, "No ticket to obtain authz data from");
	return GSS_S_NO_CONTEXT;
    }

    ret = FUNC5(context,
						  context_handle->ticket,
						  ad_type,
						  &data);
    FUNC1(&context_handle->ctx_id_mutex);
    if (ret) {
	*minor_status = ret;
	return GSS_S_FAILURE;
    }

    ad_data.value = data.data;
    ad_data.length = data.length;

    ret = FUNC3(minor_status,
				    &ad_data,
				    data_set);

    FUNC4(&data);

    return ret;
}