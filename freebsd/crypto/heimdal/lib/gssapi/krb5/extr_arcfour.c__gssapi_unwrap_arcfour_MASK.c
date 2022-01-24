#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u_char ;
struct TYPE_14__ {int* data; int length; } ;
struct TYPE_15__ {TYPE_1__ keyvalue; int /*<<< orphan*/  keytype; } ;
typedef  TYPE_2__ krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  k6_data ;
typedef  TYPE_3__* gsskrb5_ctx ;
typedef  scalar_t__ gss_qop_t ;
typedef  TYPE_4__* gss_buffer_t ;
typedef  int /*<<< orphan*/  cksum_data ;
struct TYPE_17__ {int* value; size_t length; } ;
struct TYPE_16__ {int more_flags; int /*<<< orphan*/  ctx_id_mutex; int /*<<< orphan*/  order; } ;
typedef  scalar_t__ OM_uint32 ;
typedef  int /*<<< orphan*/  Klocaldata ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  Confounder ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int GSS_ARCFOUR_WRAP_TOKEN_DCE_DER_HEADER_SIZE ; 
 int GSS_ARCFOUR_WRAP_TOKEN_SIZE ; 
 int /*<<< orphan*/  GSS_KRB5_MECHANISM ; 
 scalar_t__ GSS_S_BAD_MECH ; 
 scalar_t__ GSS_S_BAD_MIC ; 
 scalar_t__ GSS_S_BAD_SIG ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_3__* const) ; 
 int /*<<< orphan*/  KRB5_KU_USAGE_SEAL ; 
 int LOCAL ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int**,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_4__*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC11 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,TYPE_4__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int*,int,int*,int,int*,int,int*,size_t) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,TYPE_2__*,int*,int,int*,int) ; 
 int FUNC15 (int*,int*,int) ; 
 int* FUNC16 (size_t) ; 
 int FUNC17 (int*,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC19 (int*,int /*<<< orphan*/ ,int) ; 

OM_uint32 FUNC20(OM_uint32 *minor_status,
				 const gsskrb5_ctx context_handle,
				 krb5_context context,
				 const gss_buffer_t input_message_buffer,
				 gss_buffer_t output_message_buffer,
				 int *conf_state,
				 gss_qop_t *qop_state,
				 krb5_keyblock *key)
{
    u_char Klocaldata[16];
    krb5_keyblock Klocal;
    krb5_error_code ret;
    uint32_t seq_number;
    size_t datalen;
    OM_uint32 omret;
    u_char k6_data[16], SND_SEQ[8], Confounder[8];
    u_char cksum_data[8];
    u_char *p, *p0;
    int cmp;
    int conf_flag;
    size_t padlen = 0, len;

    if (conf_state)
	*conf_state = 0;
    if (qop_state)
	*qop_state = 0;

    p0 = input_message_buffer->value;

    if (FUNC7(context_handle)) {
	len = GSS_ARCFOUR_WRAP_TOKEN_SIZE +
	    GSS_ARCFOUR_WRAP_TOKEN_DCE_DER_HEADER_SIZE;
	if (input_message_buffer->length < len)
	    return GSS_S_BAD_MECH;
    } else {
	len = input_message_buffer->length;
    }

    omret = FUNC9(&p0,
				       len,
				       GSS_KRB5_MECHANISM);
    if (omret)
	return omret;

    /* length of mech header */
    len = (p0 - (u_char *)input_message_buffer->value) +
	GSS_ARCFOUR_WRAP_TOKEN_SIZE;

    if (len > input_message_buffer->length)
	return GSS_S_BAD_MECH;

    /* length of data */
    datalen = input_message_buffer->length - len;

    p = p0;

    if (FUNC17(p, "\x02\x01", 2) != 0)
	return GSS_S_BAD_SIG;
    p += 2;
    if (FUNC17(p, "\x11\x00", 2) != 0) /* SGN_ALG = HMAC MD5 ARCFOUR */
	return GSS_S_BAD_SIG;
    p += 2;

    if (FUNC17 (p, "\x10\x00", 2) == 0)
	conf_flag = 1;
    else if (FUNC17 (p, "\xff\xff", 2) == 0)
	conf_flag = 0;
    else
	return GSS_S_BAD_SIG;

    p += 2;
    if (FUNC17 (p, "\xff\xff", 2) != 0)
	return GSS_S_BAD_MIC;
    p = NULL;

    ret = FUNC14(context, key,
			  p0 + 16, 8, /* SGN_CKSUM */
			  k6_data, sizeof(k6_data));
    if (ret) {
	*minor_status = ret;
	return GSS_S_FAILURE;
    }

    {
	EVP_CIPHER_CTX *rc4_key;

	rc4_key = FUNC1();
	if (rc4_key == NULL) {
	    *minor_status = ENOMEM;
	    return GSS_S_FAILURE;
	}
	FUNC3(rc4_key, FUNC4(), NULL, k6_data, NULL, 1);
	FUNC2(rc4_key, SND_SEQ, p0 + 8, 8);
	FUNC0(rc4_key);
	FUNC19(k6_data, 0, sizeof(k6_data));
    }

    FUNC11(SND_SEQ, &seq_number);

    if (context_handle->more_flags & LOCAL)
	cmp = FUNC17(&SND_SEQ[4], "\xff\xff\xff\xff", 4);
    else
	cmp = FUNC17(&SND_SEQ[4], "\x00\x00\x00\x00", 4);

    if (cmp != 0) {
	*minor_status = 0;
	return GSS_S_BAD_MIC;
    }

    {
	int i;

	Klocal.keytype = key->keytype;
	Klocal.keyvalue.data = Klocaldata;
	Klocal.keyvalue.length = sizeof(Klocaldata);

	for (i = 0; i < 16; i++)
	    Klocaldata[i] = ((u_char *)key->keyvalue.data)[i] ^ 0xF0;
    }
    ret = FUNC14(context, &Klocal,
			  SND_SEQ, 4,
			  k6_data, sizeof(k6_data));
    FUNC19(Klocaldata, 0, sizeof(Klocaldata));
    if (ret) {
	*minor_status = ret;
	return GSS_S_FAILURE;
    }

    output_message_buffer->value = FUNC16(datalen);
    if (output_message_buffer->value == NULL) {
	*minor_status = ENOMEM;
	return GSS_S_FAILURE;
    }
    output_message_buffer->length = datalen;

    if(conf_flag) {
	EVP_CIPHER_CTX *rc4_key;

	rc4_key = FUNC1();
	if (rc4_key == NULL) {
	    FUNC12(minor_status, output_message_buffer);
	    *minor_status = ENOMEM;
	    return GSS_S_FAILURE;
	}
	FUNC3(rc4_key, FUNC4(), NULL, k6_data, NULL, 1);
	FUNC2(rc4_key, Confounder, p0 + 24, 8);
	FUNC2(rc4_key, output_message_buffer->value, p0 + GSS_ARCFOUR_WRAP_TOKEN_SIZE, datalen);
	FUNC0(rc4_key);
    } else {
	FUNC18(Confounder, p0 + 24, 8); /* Confounder */
	FUNC18(output_message_buffer->value,
	       p0 + GSS_ARCFOUR_WRAP_TOKEN_SIZE,
	       datalen);
    }
    FUNC19(k6_data, 0, sizeof(k6_data));

    if (!FUNC7(context_handle)) {
	ret = FUNC10(output_message_buffer, datalen, &padlen);
	if (ret) {
	    FUNC12(minor_status, output_message_buffer);
	    *minor_status = 0;
	    return ret;
	}
	output_message_buffer->length -= padlen;
    }

    ret = FUNC13(context,
			    key, KRB5_KU_USAGE_SEAL,
			    cksum_data, sizeof(cksum_data),
			    p0, 8,
			    Confounder, sizeof(Confounder),
			    output_message_buffer->value,
			    output_message_buffer->length + padlen);
    if (ret) {
	FUNC12(minor_status, output_message_buffer);
	*minor_status = ret;
	return GSS_S_FAILURE;
    }

    cmp = FUNC15(cksum_data, p0 + 16, 8); /* SGN_CKSUM */
    if (cmp) {
	FUNC12(minor_status, output_message_buffer);
	*minor_status = 0;
	return GSS_S_BAD_MIC;
    }

    FUNC5(&context_handle->ctx_id_mutex);
    omret = FUNC8(context_handle->order, seq_number);
    FUNC6(&context_handle->ctx_id_mutex);
    if (omret)
	return omret;

    if (conf_state)
	*conf_state = conf_flag;

    *minor_status = 0;
    return GSS_S_COMPLETE;
}