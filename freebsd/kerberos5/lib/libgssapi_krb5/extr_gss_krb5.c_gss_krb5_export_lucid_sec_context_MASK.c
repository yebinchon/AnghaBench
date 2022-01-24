#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  int krb5_error_code ;
typedef  int /*<<< orphan*/ * krb5_context ;
struct TYPE_13__ {int have_acceptor_subkey; int /*<<< orphan*/  acceptor_subkey; int /*<<< orphan*/  ctx_key; } ;
struct TYPE_12__ {int sign_alg; int seal_alg; int /*<<< orphan*/  ctx_key; } ;
struct TYPE_14__ {int version; int initiate; int endtime; int send_seq; int recv_seq; int protocol; TYPE_3__ cfx_kd; TYPE_2__ rfc1964_kd; } ;
typedef  TYPE_4__ gss_krb5_lucid_context_v1_t ;
typedef  scalar_t__ gss_ctx_id_t ;
typedef  TYPE_5__* gss_buffer_set_t ;
struct TYPE_15__ {int count; TYPE_1__* elements; } ;
struct TYPE_11__ {int /*<<< orphan*/  length; int /*<<< orphan*/  value; } ;
typedef  int OM_uint32 ;

/* Variables and functions */
 void* EINVAL ; 
 int ENOMEM ; 
 TYPE_5__* GSS_C_NO_BUFFER_SET ; 
 scalar_t__ GSS_C_NO_CONTEXT ; 
 int /*<<< orphan*/  GSS_KRB5_EXPORT_LUCID_CONTEXT_V1_X ; 
 int GSS_S_COMPLETE ; 
 int GSS_S_FAILURE ; 
 TYPE_4__* FUNC0 (int,int) ; 
 int FUNC1 (int*,scalar_t__,int /*<<< orphan*/ ,TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int*,TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ **) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

OM_uint32
FUNC12(OM_uint32 *minor_status,
				  gss_ctx_id_t *context_handle,
				  OM_uint32 version,
				  void **rctx)
{
    krb5_context context = NULL;
    krb5_error_code ret;
    gss_buffer_set_t data_set = GSS_C_NO_BUFFER_SET;
    OM_uint32 major_status;
    gss_krb5_lucid_context_v1_t *ctx = NULL;
    krb5_storage *sp = NULL;
    uint32_t num;

    if (context_handle == NULL
	|| *context_handle == GSS_C_NO_CONTEXT
	|| version != 1)
    {
	ret = EINVAL;
	return GSS_S_FAILURE;
    }
    
    major_status =
	FUNC1 (minor_status,
					*context_handle,
					GSS_KRB5_EXPORT_LUCID_CONTEXT_V1_X,
					&data_set);
    if (major_status)
	return major_status;
    
    if (data_set == GSS_C_NO_BUFFER_SET || data_set->count != 1) {
	FUNC3(minor_status, &data_set);
	*minor_status = EINVAL;
	return GSS_S_FAILURE;
    }

    ret = FUNC6(&context);
    if (ret)
	goto out;

    ctx = FUNC0(1, sizeof(*ctx));
    if (ctx == NULL) {
	ret = ENOMEM;
	goto out;
    }

    sp = FUNC10(data_set->elements[0].value,
			       data_set->elements[0].length);
    if (sp == NULL) {
	ret = ENOMEM;
	goto out;
    }
    
    ret = FUNC8(sp, &num);
    if (ret) goto out;
    if (num != 1) {
	ret = EINVAL;
	goto out;
    }
    ctx->version = 1;
    /* initiator */
    ret = FUNC8(sp, &ctx->initiate);
    if (ret) goto out;
    /* endtime */
    ret = FUNC8(sp, &ctx->endtime);
    if (ret) goto out;
    /* send_seq */
    ret = FUNC8(sp, &num);
    if (ret) goto out;
    ctx->send_seq = ((uint64_t)num) << 32;
    ret = FUNC8(sp, &num);
    if (ret) goto out;
    ctx->send_seq |= num;
    /* recv_seq */
    ret = FUNC8(sp, &num);
    if (ret) goto out;
    ctx->recv_seq = ((uint64_t)num) << 32;
    ret = FUNC8(sp, &num);
    if (ret) goto out;
    ctx->recv_seq |= num;
    /* protocol */
    ret = FUNC8(sp, &ctx->protocol);
    if (ret) goto out;
    if (ctx->protocol == 0) {
	krb5_keyblock key;

	/* sign_alg */
	ret = FUNC8(sp, &ctx->rfc1964_kd.sign_alg);
	if (ret) goto out;
	/* seal_alg */
	ret = FUNC8(sp, &ctx->rfc1964_kd.seal_alg);
	if (ret) goto out;
	/* ctx_key */
	ret = FUNC7(sp, &key);
	if (ret) goto out;
	ret = FUNC11(&key, &ctx->rfc1964_kd.ctx_key);
	FUNC5(context, &key);
	if (ret) goto out;
    } else if (ctx->protocol == 1) {
	krb5_keyblock key;

	/* acceptor_subkey */
	ret = FUNC8(sp, &ctx->cfx_kd.have_acceptor_subkey);
	if (ret) goto out;
	/* ctx_key */
	ret = FUNC7(sp, &key);
	if (ret) goto out;
	ret = FUNC11(&key, &ctx->cfx_kd.ctx_key);
	FUNC5(context, &key);
	if (ret) goto out;
	/* acceptor_subkey */
	if (ctx->cfx_kd.have_acceptor_subkey) {
	    ret = FUNC7(sp, &key);
	    if (ret) goto out;
	    ret = FUNC11(&key, &ctx->cfx_kd.acceptor_subkey);
	    FUNC5(context, &key);
	    if (ret) goto out;
	}
    } else {
	ret = EINVAL;
	goto out;
    }

    *rctx = ctx;

out:
    FUNC3(minor_status, &data_set);
    if (sp)
	FUNC9(sp);
    if (context)
	FUNC4(context);

    if (ret) {
	if (ctx)
	    FUNC2(NULL, ctx);

	*minor_status = ret;
	return GSS_S_FAILURE;
    }
    *minor_status = 0;
    return GSS_S_COMPLETE;
}