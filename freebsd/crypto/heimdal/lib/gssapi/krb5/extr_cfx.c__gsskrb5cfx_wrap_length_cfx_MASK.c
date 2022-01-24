#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t uint16_t ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_cksumtype ;
typedef  int /*<<< orphan*/  gss_cfx_wrap_token_desc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

krb5_error_code
FUNC6(krb5_context context,
			    krb5_crypto crypto,
			    int conf_req_flag,
			    int dce_style,
			    size_t input_length,
			    size_t *output_length,
			    size_t *cksumsize,
			    uint16_t *padlength)
{
    krb5_error_code ret;
    krb5_cksumtype type;

    /* 16-byte header is always first */
    *output_length = sizeof(gss_cfx_wrap_token_desc);
    *padlength = 0;

    ret = FUNC2(context, crypto, &type);
    if (ret)
	return ret;

    ret = FUNC1(context, type, cksumsize);
    if (ret)
	return ret;

    if (conf_req_flag) {
	size_t padsize;

	/* Header is concatenated with data before encryption */
	input_length += sizeof(gss_cfx_wrap_token_desc);

	if (dce_style) {
		ret = FUNC3(context, crypto, &padsize);
	} else {
		ret = FUNC4(context, crypto, &padsize);
	}
	if (ret) {
	    return ret;
	}
	if (padsize > 1) {
	    /* XXX check this */
	    *padlength = padsize - (input_length % padsize);

	    /* We add the pad ourselves (noted here for completeness only) */
	    input_length += *padlength;
	}

	*output_length += FUNC5(context,
						  crypto, input_length);
    } else {
	/* Checksum is concatenated with data */
	*output_length += input_length + *cksumsize;
    }

    FUNC0(*output_length > input_length);

    return 0;
}