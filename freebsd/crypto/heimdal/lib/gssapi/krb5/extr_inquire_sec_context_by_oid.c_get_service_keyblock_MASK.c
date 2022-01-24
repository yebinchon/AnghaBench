#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  void* krb5_error_code ;
struct TYPE_9__ {int /*<<< orphan*/  data; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ krb5_data ;
typedef  TYPE_2__* gsskrb5_ctx ;
typedef  int /*<<< orphan*/  gss_buffer_set_t ;
struct TYPE_11__ {int /*<<< orphan*/  value; int /*<<< orphan*/  length; } ;
typedef  TYPE_3__ gss_buffer_desc ;
struct TYPE_10__ {int /*<<< orphan*/  ctx_id_mutex; int /*<<< orphan*/ * service_keyblock; } ;
typedef  void* OM_uint32 ;

/* Variables and functions */
 void* EINVAL ; 
 void* ENOMEM ; 
 void* GSS_S_COMPLETE ; 
 void* GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void*,char*) ; 
 void* FUNC4 (void**,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 void* FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 void* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static OM_uint32
FUNC11
        (OM_uint32 *minor_status,
	 gsskrb5_ctx ctx,
	 gss_buffer_set_t *data_set)
{
    krb5_storage *sp = NULL;
    krb5_data data;
    OM_uint32 maj_stat = GSS_S_COMPLETE;
    krb5_error_code ret = EINVAL;

    sp = FUNC7();
    if (sp == NULL) {
	FUNC2();
	*minor_status = ENOMEM;
	return GSS_S_FAILURE;
    }

    FUNC0(&ctx->ctx_id_mutex);
    if (ctx->service_keyblock == NULL) {
	FUNC1(&ctx->ctx_id_mutex);
	FUNC8(sp);
	FUNC3(EINVAL, "No service keyblock on gssapi context");
	*minor_status = EINVAL;
	return GSS_S_FAILURE;
    }

    FUNC6(&data);

    ret = FUNC10(sp, *ctx->service_keyblock);

    FUNC1(&ctx->ctx_id_mutex);

    if (ret)
	goto out;

    ret = FUNC9(sp, &data);
    if (ret)
	goto out;

    {
	gss_buffer_desc value;

	value.length = data.length;
	value.value = data.data;

	maj_stat = FUNC4(minor_status,
					     &value,
					     data_set);
    }

out:
    FUNC5(&data);
    if (sp)
	FUNC8(sp);
    if (ret) {
	*minor_status = ret;
	maj_stat = GSS_S_FAILURE;
    }
    return maj_stat;
}