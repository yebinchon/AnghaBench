#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_14__ {int length; char* data; } ;
typedef  TYPE_2__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int int32_t ;
typedef  TYPE_3__* gsskrb5_ctx ;
typedef  int /*<<< orphan*/  gss_qop_t ;
typedef  TYPE_4__* gss_buffer_t ;
struct TYPE_13__ {char* data; int length; } ;
struct TYPE_17__ {TYPE_1__ checksum; } ;
struct TYPE_16__ {size_t length; char* value; } ;
struct TYPE_15__ {int more_flags; int /*<<< orphan*/  ctx_id_mutex; int /*<<< orphan*/  auth_context; } ;
typedef  scalar_t__ OM_uint32 ;
typedef  TYPE_5__ Checksum ;

/* Variables and functions */
 int COMPAT_OLD_DES3 ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  ETYPE_DES3_CBC_NONE ; 
 int /*<<< orphan*/  GSS_KRB5_MECHANISM ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KRB5_KU_USAGE_SEQ ; 
 int /*<<< orphan*/  KRB5_KU_USAGE_SIGN ; 
 int LOCAL ; 
 int /*<<< orphan*/  FUNC2 (int,size_t*,size_t*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,size_t,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,TYPE_2__*,char*) ; 
 void* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,int) ; 

__attribute__((used)) static OM_uint32
FUNC17
           (OM_uint32 * minor_status,
            const gsskrb5_ctx ctx,
	    krb5_context context,
            gss_qop_t qop_req,
            const gss_buffer_t message_buffer,
            gss_buffer_t message_token,
	    krb5_keyblock *key
           )
{
  u_char *p;
  Checksum cksum;
  u_char seq[8];

  int32_t seq_number;
  size_t len, total_len;

  krb5_crypto crypto;
  krb5_error_code kret;
  krb5_data encdata;
  char *tmp;
  char ivec[8];

  FUNC2 (36, &len, &total_len, GSS_KRB5_MECHANISM);

  message_token->length = total_len;
  message_token->value  = FUNC14 (total_len);
  if (message_token->value == NULL) {
      message_token->length = 0;
      *minor_status = ENOMEM;
      return GSS_S_FAILURE;
  }

  p = FUNC3(message_token->value,
			      len,
			      "\x01\x01", /* TOK-ID */
			      GSS_KRB5_MECHANISM);

  FUNC15 (p, "\x04\x00", 2);	/* SGN_ALG = HMAC SHA1 DES3-KD */
  p += 2;

  FUNC15 (p, "\xff\xff\xff\xff", 4); /* filler */
  p += 4;

  /* this should be done in parts */

  tmp = FUNC14 (message_buffer->length + 8);
  if (tmp == NULL) {
      FUNC5 (message_token->value);
      message_token->value = NULL;
      message_token->length = 0;
      *minor_status = ENOMEM;
      return GSS_S_FAILURE;
  }
  FUNC15 (tmp, p - 8, 8);
  FUNC15 (tmp + 8, message_buffer->value, message_buffer->length);

  kret = FUNC11(context, key, 0, &crypto);
  if (kret) {
      FUNC5 (message_token->value);
      message_token->value = NULL;
      message_token->length = 0;
      FUNC5 (tmp);
      *minor_status = kret;
      return GSS_S_FAILURE;
  }

  kret = FUNC9 (context,
			       crypto,
			       KRB5_KU_USAGE_SIGN,
			       0,
			       tmp,
			       message_buffer->length + 8,
			       &cksum);
  FUNC5 (tmp);
  FUNC10 (context, crypto);
  if (kret) {
      FUNC5 (message_token->value);
      message_token->value = NULL;
      message_token->length = 0;
      *minor_status = kret;
      return GSS_S_FAILURE;
  }

  FUNC15 (p + 8, cksum.checksum.data, cksum.checksum.length);

  FUNC0(&ctx->ctx_id_mutex);
  /* sequence number */
  FUNC7 (context,
			       ctx->auth_context,
			       &seq_number);

  seq[0] = (seq_number >> 0)  & 0xFF;
  seq[1] = (seq_number >> 8)  & 0xFF;
  seq[2] = (seq_number >> 16) & 0xFF;
  seq[3] = (seq_number >> 24) & 0xFF;
  FUNC16 (seq + 4,
	  (ctx->more_flags & LOCAL) ? 0 : 0xFF,
	  4);

  kret = FUNC11(context, key,
			  ETYPE_DES3_CBC_NONE, &crypto);
  if (kret) {
      FUNC5 (message_token->value);
      message_token->value = NULL;
      message_token->length = 0;
      *minor_status = kret;
      return GSS_S_FAILURE;
  }

  if (ctx->more_flags & COMPAT_OLD_DES3)
      FUNC16(ivec, 0, 8);
  else
      FUNC15(ivec, p + 8, 8);

  kret = FUNC13 (context,
			    crypto,
			    KRB5_KU_USAGE_SEQ,
			    seq, 8, &encdata, ivec);
  FUNC10 (context, crypto);
  if (kret) {
      FUNC5 (message_token->value);
      message_token->value = NULL;
      message_token->length = 0;
      *minor_status = kret;
      return GSS_S_FAILURE;
  }

  FUNC4 (encdata.length == 8);

  FUNC15 (p, encdata.data, encdata.length);
  FUNC12 (&encdata);

  FUNC8 (context,
			       ctx->auth_context,
			       ++seq_number);
  FUNC1(&ctx->ctx_id_mutex);

  FUNC6 (&cksum);
  *minor_status = 0;
  return GSS_S_COMPLETE;
}