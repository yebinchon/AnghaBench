#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  krb5_keyblock ;
struct TYPE_16__ {size_t length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  TYPE_3__* gsskrb5_ctx ;
typedef  int /*<<< orphan*/  gss_qop_t ;
typedef  TYPE_4__* gss_buffer_t ;
struct TYPE_15__ {int length; int /*<<< orphan*/ * data; } ;
struct TYPE_19__ {TYPE_1__ checksum; int /*<<< orphan*/  cksumtype; } ;
struct TYPE_18__ {int length; int /*<<< orphan*/ * value; } ;
struct TYPE_17__ {int more_flags; int /*<<< orphan*/  ctx_id_mutex; int /*<<< orphan*/  order; } ;
typedef  scalar_t__ OM_uint32 ;
typedef  int /*<<< orphan*/  DES_cblock ;
typedef  TYPE_5__ Checksum ;

/* Variables and functions */
 int /*<<< orphan*/  CKSUMTYPE_HMAC_SHA1_DES3 ; 
 int /*<<< orphan*/  ETYPE_DES3_CBC_NONE ; 
 int /*<<< orphan*/  GSS_KRB5_MECHANISM ; 
 scalar_t__ GSS_S_BAD_MIC ; 
 scalar_t__ GSS_S_BAD_SIG ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_DEFECTIVE_TOKEN ; 
 scalar_t__ GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_3__* const) ; 
 int /*<<< orphan*/  KRB5_KU_USAGE_SEAL ; 
 int /*<<< orphan*/  KRB5_KU_USAGE_SEQ ; 
 int /*<<< orphan*/  KRB5_KU_USAGE_SIGN ; 
 int LOCAL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_4__* const,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,TYPE_2__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC15 (size_t) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static OM_uint32
FUNC18
           (OM_uint32 * minor_status,
            const gsskrb5_ctx context_handle,
	    krb5_context context,
            const gss_buffer_t input_message_buffer,
            gss_buffer_t output_message_buffer,
            int * conf_state,
            gss_qop_t * qop_state,
	    krb5_keyblock *key
           )
{
  u_char *p;
  size_t len;
  u_char *seq;
  krb5_data seq_data;
  u_char cksum[20];
  uint32_t seq_number;
  size_t padlength;
  OM_uint32 ret;
  int cstate;
  krb5_crypto crypto;
  Checksum csum;
  int cmp;
  int token_len;

  if (FUNC2(context_handle)) {
     token_len = 34 + 8 + 15; /* 57 */
  } else {
     token_len = input_message_buffer->length;
  }

  p = input_message_buffer->value;
  ret = FUNC6 (&p,
				   token_len,
				   "\x02\x01",
				   GSS_KRB5_MECHANISM);
  if (ret)
      return ret;

  if (FUNC16 (p, "\x04\x00", 2) != 0) /* HMAC SHA1 DES3_KD */
    return GSS_S_BAD_SIG;
  p += 2;
  if (FUNC8 (p, "\x02\x00", 2) == 0) {
    cstate = 1;
  } else if (FUNC8 (p, "\xff\xff", 2) == 0) {
    cstate = 0;
  } else
    return GSS_S_BAD_MIC;
  p += 2;
  if(conf_state != NULL)
    *conf_state = cstate;
  if (FUNC8 (p, "\xff\xff", 2) != 0)
    return GSS_S_DEFECTIVE_TOKEN;
  p += 2;
  p += 28;

  len = p - (u_char *)input_message_buffer->value;

  if(cstate) {
      /* decrypt data */
      krb5_data tmp;

      ret = FUNC10(context, key,
			     ETYPE_DES3_CBC_NONE, &crypto);
      if (ret) {
	  *minor_status = ret;
	  return GSS_S_FAILURE;
      }
      ret = FUNC12(context, crypto, KRB5_KU_USAGE_SEAL,
			 p, input_message_buffer->length - len, &tmp);
      FUNC9(context, crypto);
      if (ret) {
	  *minor_status = ret;
	  return GSS_S_FAILURE;
      }
      FUNC7 (tmp.length == input_message_buffer->length - len);

      FUNC17 (p, tmp.data, tmp.length);
      FUNC11(&tmp);
  }

  if (FUNC2(context_handle)) {
    padlength = 0;
  } else {
    /* check pad */
    ret = FUNC4(input_message_buffer,
			     input_message_buffer->length - len,
			     &padlength);
    if (ret)
        return ret;
  }

  /* verify sequence number */

  FUNC0(&context_handle->ctx_id_mutex);

  p -= 28;

  ret = FUNC10(context, key,
			 ETYPE_DES3_CBC_NONE, &crypto);
  if (ret) {
      *minor_status = ret;
      FUNC1(&context_handle->ctx_id_mutex);
      return GSS_S_FAILURE;
  }
  {
      DES_cblock ivec;

      FUNC17(&ivec, p + 8, 8);
      ret = FUNC13 (context,
			       crypto,
			       KRB5_KU_USAGE_SEQ,
			       p, 8, &seq_data,
			       &ivec);
  }
  FUNC9 (context, crypto);
  if (ret) {
      *minor_status = ret;
      FUNC1(&context_handle->ctx_id_mutex);
      return GSS_S_FAILURE;
  }
  if (seq_data.length != 8) {
      FUNC11 (&seq_data);
      *minor_status = 0;
      FUNC1(&context_handle->ctx_id_mutex);
      return GSS_S_BAD_MIC;
  }

  seq = seq_data.data;
  FUNC5(seq, &seq_number);

  if (context_handle->more_flags & LOCAL)
      cmp = FUNC8(&seq[4], "\xff\xff\xff\xff", 4);
  else
      cmp = FUNC8(&seq[4], "\x00\x00\x00\x00", 4);

  FUNC11 (&seq_data);
  if (cmp != 0) {
      *minor_status = 0;
      FUNC1(&context_handle->ctx_id_mutex);
      return GSS_S_BAD_MIC;
  }

  ret = FUNC3(context_handle->order, seq_number);
  if (ret) {
      *minor_status = 0;
      FUNC1(&context_handle->ctx_id_mutex);
      return ret;
  }

  FUNC1(&context_handle->ctx_id_mutex);

  /* verify checksum */

  FUNC17 (cksum, p + 8, 20);

  FUNC17 (p + 20, p - 8, 8);

  csum.cksumtype = CKSUMTYPE_HMAC_SHA1_DES3;
  csum.checksum.length = 20;
  csum.checksum.data   = cksum;

  ret = FUNC10(context, key, 0, &crypto);
  if (ret) {
      *minor_status = ret;
      return GSS_S_FAILURE;
  }

  ret = FUNC14 (context, crypto,
			      KRB5_KU_USAGE_SIGN,
			      p + 20,
			      input_message_buffer->length - len + 8,
			      &csum);
  FUNC9 (context, crypto);
  if (ret) {
      *minor_status = ret;
      return GSS_S_FAILURE;
  }

  /* copy out data */

  output_message_buffer->length = input_message_buffer->length
    - len - padlength - 8;
  output_message_buffer->value  = FUNC15(output_message_buffer->length);
  if(output_message_buffer->length != 0 && output_message_buffer->value == NULL)
      return GSS_S_FAILURE;
  FUNC17 (output_message_buffer->value,
	  p + 36,
	  output_message_buffer->length);
  return GSS_S_COMPLETE;
}