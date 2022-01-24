#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  k6_data ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  TYPE_1__* gsskrb5_ctx ;
typedef  int /*<<< orphan*/  gss_qop_t ;
typedef  TYPE_2__* gss_buffer_t ;
struct TYPE_8__ {size_t length; int /*<<< orphan*/ * value; } ;
struct TYPE_7__ {int more_flags; int /*<<< orphan*/  ctx_id_mutex; int /*<<< orphan*/  auth_context; } ;
typedef  scalar_t__ OM_uint32 ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  GSS_KRB5_MECHANISM ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KRB5_KU_USAGE_SIGN ; 
 int LOCAL ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,size_t*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,TYPE_2__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (size_t) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int) ; 

OM_uint32
FUNC17(OM_uint32 * minor_status,
			const gsskrb5_ctx context_handle,
			krb5_context context,
			gss_qop_t qop_req,
			const gss_buffer_t message_buffer,
			gss_buffer_t message_token,
			krb5_keyblock *key)
{
    krb5_error_code ret;
    int32_t seq_number;
    size_t len, total_len;
    u_char k6_data[16], *p0, *p;
    EVP_CIPHER_CTX *rc4_key;

    FUNC8 (22, &len, &total_len, GSS_KRB5_MECHANISM);

    message_token->length = total_len;
    message_token->value  = FUNC15 (total_len);
    if (message_token->value == NULL) {
	*minor_status = ENOMEM;
	return GSS_S_FAILURE;
    }

    p0 = FUNC7(message_token->value,
				  len,
				  GSS_KRB5_MECHANISM);
    p = p0;

    *p++ = 0x01; /* TOK_ID */
    *p++ = 0x01;
    *p++ = 0x11; /* SGN_ALG */
    *p++ = 0x00;
    *p++ = 0xff; /* Filler */
    *p++ = 0xff;
    *p++ = 0xff;
    *p++ = 0xff;

    p = NULL;

    ret = FUNC11(context,
			    key, KRB5_KU_USAGE_SIGN,
			    p0 + 16, 8,  /* SGN_CKSUM */
			    p0, 8, /* TOK_ID, SGN_ALG, Filer */
			    message_buffer->value, message_buffer->length,
			    NULL, 0);
    if (ret) {
	FUNC10(minor_status, message_token);
	*minor_status = ret;
	return GSS_S_FAILURE;
    }

    ret = FUNC12(context, key,
			  p0 + 16, 8, /* SGN_CKSUM */
			  k6_data, sizeof(k6_data));
    if (ret) {
	FUNC10(minor_status, message_token);
	*minor_status = ret;
	return GSS_S_FAILURE;
    }

    FUNC5(&context_handle->ctx_id_mutex);
    FUNC13 (context,
				     context_handle->auth_context,
				     &seq_number);
    p = p0 + 8; /* SND_SEQ */
    FUNC9(seq_number, p);

    FUNC14 (context,
				     context_handle->auth_context,
				     ++seq_number);
    FUNC6(&context_handle->ctx_id_mutex);

    FUNC16 (p + 4, (context_handle->more_flags & LOCAL) ? 0 : 0xff, 4);

    rc4_key = FUNC1();
    if (rc4_key == NULL) {
	FUNC10(minor_status, message_token);
	*minor_status = ENOMEM;
	return GSS_S_FAILURE;
    }

    FUNC3(rc4_key, FUNC4(), NULL, k6_data, NULL, 1);
    FUNC2(rc4_key, p, p, 8);
    FUNC0(rc4_key);

    FUNC16(k6_data, 0, sizeof(k6_data));

    *minor_status = 0;
    return GSS_S_COMPLETE;
}