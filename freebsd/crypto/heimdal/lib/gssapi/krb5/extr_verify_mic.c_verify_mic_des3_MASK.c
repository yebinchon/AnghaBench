#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  krb5_keyblock ;
struct TYPE_13__ {int length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  TYPE_3__* gsskrb5_ctx ;
typedef  int /*<<< orphan*/  gss_qop_t ;
typedef  TYPE_4__* gss_buffer_t ;
struct TYPE_12__ {int length; int /*<<< orphan*/ * data; } ;
struct TYPE_16__ {TYPE_1__ checksum; int /*<<< orphan*/  cksumtype; } ;
struct TYPE_15__ {int length; int /*<<< orphan*/ * value; } ;
struct TYPE_14__ {int more_flags; int /*<<< orphan*/  ctx_id_mutex; int /*<<< orphan*/  order; } ;
typedef  scalar_t__ OM_uint32 ;
typedef  TYPE_5__ Checksum ;

/* Variables and functions */
 int /*<<< orphan*/  CKSUMTYPE_HMAC_SHA1_DES3 ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  ETYPE_DES3_CBC_NONE ; 
 int /*<<< orphan*/  ETYPE_DES3_CBC_SHA1 ; 
 int /*<<< orphan*/  GSS_KRB5_MECHANISM ; 
 scalar_t__ GSS_S_BAD_MIC ; 
 scalar_t__ GSS_S_BAD_SIG ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KRB5_KU_USAGE_SEQ ; 
 int /*<<< orphan*/  KRB5_KU_USAGE_SIGN ; 
 int LOCAL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int,char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_2__*,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,TYPE_5__*) ; 
 char* FUNC12 (int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static OM_uint32
FUNC16
           (OM_uint32 * minor_status,
            const gsskrb5_ctx context_handle,
	    krb5_context context,
            const gss_buffer_t message_buffer,
            const gss_buffer_t token_buffer,
            gss_qop_t * qop_state,
	    krb5_keyblock *key,
	    const char *type
	    )
{
  u_char *p;
  u_char *seq;
  uint32_t seq_number;
  OM_uint32 ret;
  krb5_crypto crypto;
  krb5_data seq_data;
  int cmp, docompat;
  Checksum csum;
  char *tmp;
  char ivec[8];

  p = token_buffer->value;
  ret = FUNC4 (&p,
				   token_buffer->length,
				   type,
				   GSS_KRB5_MECHANISM);
  if (ret)
      return ret;

  if (FUNC13(p, "\x04\x00", 2) != 0) /* SGN_ALG = HMAC SHA1 DES3-KD */
      return GSS_S_BAD_SIG;
  p += 2;
  if (FUNC13 (p, "\xff\xff\xff\xff", 4) != 0)
    return GSS_S_BAD_MIC;
  p += 4;

  ret = FUNC8(context, key,
			 ETYPE_DES3_CBC_NONE, &crypto);
  if (ret){
      *minor_status = ret;
      return GSS_S_FAILURE;
  }

  /* verify sequence number */
  docompat = 0;
retry:
  if (docompat)
      FUNC15(ivec, 0, 8);
  else
      FUNC14(ivec, p + 8, 8);

  ret = FUNC10 (context,
			   crypto,
			   KRB5_KU_USAGE_SEQ,
			   p, 8, &seq_data, ivec);
  if (ret) {
      if (docompat++) {
	  FUNC7 (context, crypto);
	  *minor_status = ret;
	  return GSS_S_FAILURE;
      } else
	  goto retry;
  }

  if (seq_data.length != 8) {
      FUNC9 (&seq_data);
      if (docompat++) {
	  FUNC7 (context, crypto);
	  return GSS_S_BAD_MIC;
      } else
	  goto retry;
  }

  FUNC0(&context_handle->ctx_id_mutex);

  seq = seq_data.data;
  FUNC3(seq, &seq_number);

  if (context_handle->more_flags & LOCAL)
      cmp = FUNC5(&seq[4], "\xff\xff\xff\xff", 4);
  else
      cmp = FUNC5(&seq[4], "\x00\x00\x00\x00", 4);

  FUNC9 (&seq_data);
  if (cmp != 0) {
      FUNC7 (context, crypto);
      *minor_status = 0;
      FUNC1(&context_handle->ctx_id_mutex);
      return GSS_S_BAD_MIC;
  }

  ret = FUNC2(context_handle->order, seq_number);
  if (ret) {
      FUNC7 (context, crypto);
      *minor_status = 0;
      FUNC1(&context_handle->ctx_id_mutex);
      return ret;
  }

  /* verify checksum */

  tmp = FUNC12 (message_buffer->length + 8);
  if (tmp == NULL) {
      FUNC7 (context, crypto);
      FUNC1(&context_handle->ctx_id_mutex);
      *minor_status = ENOMEM;
      return GSS_S_FAILURE;
  }

  FUNC14 (tmp, p - 8, 8);
  FUNC14 (tmp + 8, message_buffer->value, message_buffer->length);

  csum.cksumtype = CKSUMTYPE_HMAC_SHA1_DES3;
  csum.checksum.length = 20;
  csum.checksum.data   = p + 8;

  FUNC7 (context, crypto);
  ret = FUNC8(context, key,
			 ETYPE_DES3_CBC_SHA1, &crypto);
  if (ret){
      *minor_status = ret;
      return GSS_S_FAILURE;
  }

  ret = FUNC11 (context, crypto,
			      KRB5_KU_USAGE_SIGN,
			      tmp, message_buffer->length + 8,
			      &csum);
  FUNC6 (tmp);
  if (ret) {
      FUNC7 (context, crypto);
      *minor_status = ret;
      FUNC1(&context_handle->ctx_id_mutex);
      return GSS_S_BAD_MIC;
  }
  FUNC1(&context_handle->ctx_id_mutex);

  FUNC7 (context, crypto);
  return GSS_S_COMPLETE;
}