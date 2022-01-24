#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int krb5_keytype ;
struct TYPE_14__ {int /*<<< orphan*/  keytype; } ;
typedef  TYPE_1__ krb5_keyblock ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  TYPE_2__* gsskrb5_ctx ;
typedef  int /*<<< orphan*/  gss_qop_t ;
typedef  int /*<<< orphan*/  gss_buffer_t ;
struct TYPE_15__ {int more_flags; int /*<<< orphan*/  ctx_id_mutex; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int IS_CFX ; 
#define  KEYTYPE_ARCFOUR 131 
#define  KEYTYPE_ARCFOUR_56 130 
#define  KEYTYPE_DES 129 
#define  KEYTYPE_DES3 128 
 scalar_t__ FUNC2 (scalar_t__*,TYPE_2__* const,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ *,TYPE_1__*,char const*) ; 
 scalar_t__ FUNC3 (scalar_t__*,TYPE_2__* const,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_2__* const,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC8 (scalar_t__*,TYPE_2__* const,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ *,TYPE_1__*,char const*) ; 
 scalar_t__ FUNC9 (scalar_t__*,TYPE_2__* const,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ *,TYPE_1__*,char const*) ; 

OM_uint32
FUNC10
           (OM_uint32 * minor_status,
            const gsskrb5_ctx ctx,
	    krb5_context context,
            const gss_buffer_t message_buffer,
            const gss_buffer_t token_buffer,
            gss_qop_t * qop_state,
	    const char * type
	    )
{
    krb5_keyblock *key;
    OM_uint32 ret;
    krb5_keytype keytype;

    if (ctx->more_flags & IS_CFX)
        return FUNC3 (minor_status, ctx,
				       context, message_buffer, token_buffer,
				       qop_state);

    FUNC0(&ctx->ctx_id_mutex);
    ret = FUNC4(ctx, context, &key);
    FUNC1(&ctx->ctx_id_mutex);
    if (ret) {
	*minor_status = ret;
	return GSS_S_FAILURE;
    }
    *minor_status = 0;
    FUNC6 (context, key->keytype, &keytype);
    switch (keytype) {
    case KEYTYPE_DES :
#ifdef HEIM_WEAK_CRYPTO
	ret = verify_mic_des (minor_status, ctx, context,
			      message_buffer, token_buffer, qop_state, key,
			      type);
#else
      ret = GSS_S_FAILURE;
#endif
	break;
    case KEYTYPE_DES3 :
	ret = FUNC9 (minor_status, ctx, context,
			       message_buffer, token_buffer, qop_state, key,
			       type);
	break;
    case KEYTYPE_ARCFOUR :
    case KEYTYPE_ARCFOUR_56 :
	ret = FUNC2 (minor_status, ctx,
					  context,
					  message_buffer, token_buffer,
					  qop_state, key, type);
	break;
    default :
        FUNC5();
    }
    FUNC7 (context, key);

    return ret;
}