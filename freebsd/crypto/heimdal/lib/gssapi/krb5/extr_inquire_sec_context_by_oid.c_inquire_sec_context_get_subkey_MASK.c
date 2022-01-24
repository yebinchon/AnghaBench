#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_12__ {int /*<<< orphan*/  data; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  TYPE_2__* gsskrb5_ctx ;
typedef  int /*<<< orphan*/  gss_buffer_set_t ;
struct TYPE_14__ {int /*<<< orphan*/  value; int /*<<< orphan*/  length; } ;
typedef  TYPE_3__ gss_buffer_desc ;
typedef  enum keytype { ____Placeholder_keytype } keytype ;
struct TYPE_13__ {int /*<<< orphan*/  ctx_id_mutex; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
#define  ACCEPTOR_KEY 130 
 scalar_t__ EINVAL ; 
 scalar_t__ ENOMEM ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
#define  INITIATOR_KEY 129 
#define  TOKEN_KEY 128 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,int) ; 
 scalar_t__ FUNC4 (TYPE_2__* const,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (TYPE_2__* const,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (TYPE_2__* const,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC7 (scalar_t__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static OM_uint32 FUNC15
           (OM_uint32 *minor_status,
            const gsskrb5_ctx context_handle,
	    krb5_context context,
	    enum keytype keytype,
            gss_buffer_set_t *data_set)
{
    krb5_keyblock *key = NULL;
    krb5_storage *sp = NULL;
    krb5_data data;
    OM_uint32 maj_stat = GSS_S_COMPLETE;
    krb5_error_code ret;

    FUNC9(&data);

    sp = FUNC11();
    if (sp == NULL) {
	FUNC2();
	ret = ENOMEM;
	goto out;
    }

    FUNC0(&context_handle->ctx_id_mutex);
    switch(keytype) {
    case ACCEPTOR_KEY:
	ret = FUNC4(context_handle, context, &key);
	break;
    case INITIATOR_KEY:
	ret = FUNC5(context_handle, context, &key);
	break;
    case TOKEN_KEY:
	ret = FUNC6(context_handle, context, &key);
	break;
    default:
	FUNC3(EINVAL, "%d is not a valid subkey type", keytype);
	ret = EINVAL;
	break;
   }
    FUNC1(&context_handle->ctx_id_mutex);
    if (ret)
	goto out;
    if (key == NULL) {
	FUNC3(EINVAL, "have no subkey of type %d", keytype);
	ret = EINVAL;
	goto out;
    }

    ret = FUNC14(sp, *key);
    FUNC10 (context, key);
    if (ret)
	goto out;

    ret = FUNC13(sp, &data);
    if (ret)
	goto out;

    {
	gss_buffer_desc value;

	value.length = data.length;
	value.value = data.data;

	maj_stat = FUNC7(minor_status,
					     &value,
					     data_set);
    }

out:
    FUNC8(&data);
    if (sp)
	FUNC12(sp);
    if (ret) {
	*minor_status = ret;
	maj_stat = GSS_S_FAILURE;
    }
    return maj_stat;
}