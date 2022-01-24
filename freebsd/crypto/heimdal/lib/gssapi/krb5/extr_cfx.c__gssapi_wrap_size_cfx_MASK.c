#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_cksumtype ;
typedef  TYPE_1__* gsskrb5_ctx ;
typedef  int /*<<< orphan*/  gss_qop_t ;
struct TYPE_3__ {int /*<<< orphan*/  crypto; } ;
typedef  int OM_uint32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

OM_uint32
FUNC3(OM_uint32 *minor_status,
		      const gsskrb5_ctx ctx,
		      krb5_context context,
		      int conf_req_flag,
		      gss_qop_t qop_req,
		      OM_uint32 req_output_size,
		      OM_uint32 *max_input_size)
{
    krb5_error_code ret;

    *max_input_size = 0;

    /* 16-byte header is always first */
    if (req_output_size < 16)
	return 0;
    req_output_size -= 16;

    if (conf_req_flag) {
	size_t wrapped_size, sz;

	wrapped_size = req_output_size + 1;
	do {
	    wrapped_size--;
	    sz = FUNC2(context,
					 ctx->crypto, wrapped_size);
	} while (wrapped_size && sz > req_output_size);
	if (wrapped_size == 0)
	    return 0;

	/* inner header */
	if (wrapped_size < 16)
	    return 0;

	wrapped_size -= 16;

	*max_input_size = wrapped_size;
    } else {
	krb5_cksumtype type;
	size_t cksumsize;

	ret = FUNC1(context, ctx->crypto, &type);
	if (ret)
	    return ret;

	ret = FUNC0(context, type, &cksumsize);
	if (ret)
	    return ret;

	if (req_output_size < cksumsize)
	    return 0;

	/* Checksum is concatenated with data */
	*max_input_size = req_output_size - cksumsize;
    }

    return 0;
}