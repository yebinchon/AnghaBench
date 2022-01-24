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
typedef  int /*<<< orphan*/ * krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  scalar_t__ gss_name_t ;
typedef  TYPE_1__* gss_buffer_t ;
struct TYPE_3__ {int length; int /*<<< orphan*/  value; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 scalar_t__ GSS_S_BAD_NAME ; 
 scalar_t__ GSS_S_FAILURE ; 
 scalar_t__ KRB5_PARSE_ILLCHAR ; 
 scalar_t__ KRB5_PARSE_MALFORMED ; 
 int /*<<< orphan*/  MAGIC_HOSTBASED_NAME_TYPE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC5 (char*,char) ; 

__attribute__((used)) static OM_uint32
FUNC6 (OM_uint32 *minor_status,
		       krb5_context context,
		       const gss_buffer_t input_name_buffer,
		       gss_name_t *output_name)
{
    krb5_principal princ = NULL;
    krb5_error_code kerr;
    char *tmp, *p, *host = NULL;

    tmp = FUNC3 (input_name_buffer->length + 1);
    if (tmp == NULL) {
	*minor_status = ENOMEM;
	return GSS_S_FAILURE;
    }
    FUNC4 (tmp,
	    input_name_buffer->value,
	    input_name_buffer->length);
    tmp[input_name_buffer->length] = '\0';

    p = FUNC5 (tmp, '@');
    if (p != NULL) {
	*p = '\0';
	host = p + 1;
    }

    kerr = FUNC1(context, &princ, NULL, tmp, host, NULL);
    FUNC0 (tmp);
    *minor_status = kerr;
    if (kerr == KRB5_PARSE_ILLCHAR || kerr == KRB5_PARSE_MALFORMED)
	return GSS_S_BAD_NAME;
    else if (kerr)
	return GSS_S_FAILURE;

    FUNC2(context, princ, MAGIC_HOSTBASED_NAME_TYPE);
    *output_name = (gss_name_t)princ;

    return 0;
}