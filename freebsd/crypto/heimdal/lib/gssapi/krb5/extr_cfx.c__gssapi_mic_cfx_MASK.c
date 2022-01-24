#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int* TOK_ID; int /*<<< orphan*/ * SND_SEQ; int /*<<< orphan*/  Filler; int /*<<< orphan*/  Flags; } ;
typedef  TYPE_2__ u_char ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  TYPE_3__* gsskrb5_ctx ;
typedef  int /*<<< orphan*/  gss_qop_t ;
typedef  TYPE_2__* gss_cfx_mic_token ;
typedef  TYPE_5__* gss_buffer_t ;
struct TYPE_16__ {int length; TYPE_2__* data; } ;
struct TYPE_20__ {TYPE_1__ checksum; } ;
struct TYPE_19__ {int length; TYPE_2__* value; } ;
struct TYPE_18__ {int more_flags; int /*<<< orphan*/  crypto; int /*<<< orphan*/  ctx_id_mutex; int /*<<< orphan*/  auth_context; } ;
typedef  scalar_t__ OM_uint32 ;
typedef  TYPE_6__ Checksum ;

/* Variables and functions */
 int ACCEPTOR_SUBKEY ; 
 int /*<<< orphan*/  CFXAcceptorSubkey ; 
 int /*<<< orphan*/  CFXSentByAcceptor ; 
 scalar_t__ ENOMEM ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int KRB5_KU_USAGE_ACCEPTOR_SIGN ; 
 unsigned int KRB5_KU_USAGE_INITIATOR_SIGN ; 
 int LOCAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,TYPE_2__*,size_t,TYPE_6__*) ; 
 void* FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 

OM_uint32 FUNC11(OM_uint32 *minor_status,
			  const gsskrb5_ctx ctx,
			  krb5_context context,
			  gss_qop_t qop_req,
			  const gss_buffer_t message_buffer,
			  gss_buffer_t message_token)
{
    gss_cfx_mic_token token;
    krb5_error_code ret;
    unsigned usage;
    Checksum cksum;
    u_char *buf;
    size_t len;
    int32_t seq_number;

    len = message_buffer->length + sizeof(*token);
    buf = FUNC8(len);
    if (buf == NULL) {
	*minor_status = ENOMEM;
	return GSS_S_FAILURE;
    }

    FUNC9(buf, message_buffer->value, message_buffer->length);

    token = (gss_cfx_mic_token)(buf + message_buffer->length);
    token->TOK_ID[0] = 0x04;
    token->TOK_ID[1] = 0x04;
    token->Flags = 0;
    if ((ctx->more_flags & LOCAL) == 0)
	token->Flags |= CFXSentByAcceptor;
    if (ctx->more_flags & ACCEPTOR_SUBKEY)
	token->Flags |= CFXAcceptorSubkey;
    FUNC10(token->Filler, 0xFF, 5);

    FUNC0(&ctx->ctx_id_mutex);
    FUNC5(context,
				    ctx->auth_context,
				    &seq_number);
    FUNC2(0,          &token->SND_SEQ[0]);
    FUNC2(seq_number, &token->SND_SEQ[4]);
    FUNC6(context,
				    ctx->auth_context,
				    ++seq_number);
    FUNC1(&ctx->ctx_id_mutex);

    if (ctx->more_flags & LOCAL) {
	usage = KRB5_KU_USAGE_INITIATOR_SIGN;
    } else {
	usage = KRB5_KU_USAGE_ACCEPTOR_SIGN;
    }

    ret = FUNC7(context, ctx->crypto,
	usage, 0, buf, len, &cksum);
    if (ret != 0) {
	*minor_status = ret;
	FUNC3(buf);
	return GSS_S_FAILURE;
    }

    /* Determine MIC length */
    message_token->length = sizeof(*token) + cksum.checksum.length;
    message_token->value = FUNC8(message_token->length);
    if (message_token->value == NULL) {
	*minor_status = ENOMEM;
	FUNC4(&cksum);
	FUNC3(buf);
	return GSS_S_FAILURE;
    }

    /* Token is { "header" | get_mic("header" | plaintext-data) } */
    FUNC9(message_token->value, token, sizeof(*token));
    FUNC9((u_char *)message_token->value + sizeof(*token),
	   cksum.checksum.data, cksum.checksum.length);

    FUNC4(&cksum);
    FUNC3(buf);

    *minor_status = 0;
    return GSS_S_COMPLETE;
}