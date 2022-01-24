#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
struct TYPE_13__ {int keytype; } ;
typedef  TYPE_1__ krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_14__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  scalar_t__ int32_t ;
typedef  TYPE_3__* gsskrb5_ctx ;
typedef  int /*<<< orphan*/  gss_buffer_set_t ;
struct TYPE_16__ {int /*<<< orphan*/  length; int /*<<< orphan*/  value; } ;
typedef  TYPE_4__ gss_buffer_desc ;
struct TYPE_15__ {int more_flags; int lifetime; int /*<<< orphan*/  ctx_id_mutex; int /*<<< orphan*/  auth_context; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 int ACCEPTOR_SUBKEY ; 
 scalar_t__ ENOMEM ; 
#define  ETYPE_ARCFOUR_HMAC_MD5 134 
#define  ETYPE_ARCFOUR_HMAC_MD5_56 133 
#define  ETYPE_DES3_CBC_MD5 132 
#define  ETYPE_DES3_CBC_SHA1 131 
#define  ETYPE_DES_CBC_CRC 130 
#define  ETYPE_DES_CBC_MD4 129 
#define  ETYPE_DES_CBC_MD5 128 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int IS_CFX ; 
 int LOCAL ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_1__**) ; 
 scalar_t__ FUNC4 (scalar_t__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,TYPE_1__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static OM_uint32
FUNC15(OM_uint32 *minor_status,
			    gsskrb5_ctx context_handle,
			    krb5_context context,
			    gss_buffer_set_t *data_set)
{
    krb5_storage *sp = NULL;
    OM_uint32 major_status = GSS_S_COMPLETE;
    krb5_error_code ret;
    krb5_keyblock *key = NULL;
    int32_t number;
    int is_cfx;
    krb5_data data;

    *minor_status = 0;

    FUNC0(&context_handle->ctx_id_mutex);

    is_cfx = (context_handle->more_flags & IS_CFX);

    sp = FUNC9();
    if (sp == NULL) {
	FUNC2();
	ret = ENOMEM;
	goto out;
    }

    ret = FUNC12(sp, 1);
    if (ret) goto out;
    ret = FUNC12(sp, (context_handle->more_flags & LOCAL) ? 1 : 0);
    if (ret) goto out;
    ret = FUNC12(sp, context_handle->lifetime);
    if (ret) goto out;
    FUNC5 (context,
				     context_handle->auth_context,
				     &number);
    ret = FUNC14(sp, (uint32_t)0); /* store top half as zero */
    if (ret) goto out;
    ret = FUNC14(sp, (uint32_t)number);
    if (ret) goto out;
    FUNC6 (context,
				      context_handle->auth_context,
				      &number);
    ret = FUNC14(sp, (uint32_t)0); /* store top half as zero */
    if (ret) goto out;
    ret = FUNC14(sp, (uint32_t)number);
    if (ret) goto out;
    ret = FUNC12(sp, (is_cfx) ? 1 : 0);
    if (ret) goto out;

    ret = FUNC3(context_handle, context, &key);
    if (ret) goto out;

    if (is_cfx == 0) {
	int sign_alg, seal_alg;

	switch (key->keytype) {
	case ETYPE_DES_CBC_CRC:
	case ETYPE_DES_CBC_MD4:
	case ETYPE_DES_CBC_MD5:
	    sign_alg = 0;
	    seal_alg = 0;
	    break;
	case ETYPE_DES3_CBC_MD5:
	case ETYPE_DES3_CBC_SHA1:
	    sign_alg = 4;
	    seal_alg = 2;
	    break;
	case ETYPE_ARCFOUR_HMAC_MD5:
	case ETYPE_ARCFOUR_HMAC_MD5_56:
	    sign_alg = 17;
	    seal_alg = 16;
	    break;
	default:
	    sign_alg = -1;
	    seal_alg = -1;
	    break;
	}
	ret = FUNC12(sp, sign_alg);
	if (ret) goto out;
	ret = FUNC12(sp, seal_alg);
	if (ret) goto out;
	/* ctx_key */
	ret = FUNC13(sp, *key);
	if (ret) goto out;
    } else {
	int subkey_p = (context_handle->more_flags & ACCEPTOR_SUBKEY) ? 1 : 0;

	/* have_acceptor_subkey */
	ret = FUNC12(sp, subkey_p);
	if (ret) goto out;
	/* ctx_key */
	ret = FUNC13(sp, *key);
	if (ret) goto out;
	/* acceptor_subkey */
	if (subkey_p) {
	    ret = FUNC13(sp, *key);
	    if (ret) goto out;
	}
    }
    ret = FUNC11(sp, &data);
    if (ret) goto out;

    {
	gss_buffer_desc ad_data;

	ad_data.value = data.data;
	ad_data.length = data.length;

	ret = FUNC4(minor_status, &ad_data, data_set);
	FUNC7(&data);
	if (ret)
	    goto out;
    }

out:
    if (key)
	FUNC8 (context, key);
    if (sp)
	FUNC10(sp);
    if (ret) {
	*minor_status = ret;
	major_status = GSS_S_FAILURE;
    }
    FUNC1(&context_handle->ctx_id_mutex);
    return major_status;
}