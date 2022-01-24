#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  TYPE_1__* krb5_context ;
struct TYPE_5__ {int num_kt_types; int /*<<< orphan*/ * kt_types; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static krb5_error_code
FUNC4(krb5_context context, const krb5_context src_context)
{
    context->num_kt_types = 0;
    context->kt_types     = NULL;

    if (src_context->num_kt_types == 0)
	return 0;

    context->kt_types = FUNC2(sizeof(context->kt_types[0]) * src_context->num_kt_types);
    if (context->kt_types == NULL) {
	FUNC1(context, ENOMEM,
			       FUNC0("malloc: out of memory", ""));
	return ENOMEM;
    }

    context->num_kt_types = src_context->num_kt_types;
    FUNC3(context->kt_types, src_context->kt_types,
	   sizeof(context->kt_types[0]) * src_context->num_kt_types);

    return 0;
}