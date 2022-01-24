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
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  gss_name_t ;
typedef  TYPE_1__* gss_buffer_t ;
struct TYPE_3__ {int length; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static OM_uint32
FUNC4 (OM_uint32 *minor_status,
		  krb5_context context,
		  const gss_buffer_t input_name_buffer,
		  gss_name_t *output_name)
{
    OM_uint32 ret;
    char *tmp;

    tmp = FUNC1 (input_name_buffer->length + 1);
    if (tmp == NULL) {
	*minor_status = ENOMEM;
	return GSS_S_FAILURE;
    }
    FUNC2 (tmp,
	    input_name_buffer->value,
	    input_name_buffer->length);
    tmp[input_name_buffer->length] = '\0';

    ret = FUNC3(minor_status, context, tmp, output_name);
    FUNC0(tmp);

    return ret;
}