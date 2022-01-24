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
typedef  int /*<<< orphan*/  krb5_cc_ops ;
typedef  int /*<<< orphan*/  cc_ops ;
struct TYPE_5__ {int num_cc_ops; int /*<<< orphan*/  const** cc_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  KRB5_CC_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const**) ; 

__attribute__((used)) static krb5_error_code
FUNC5(krb5_context context, const krb5_context src_context)
{
    const krb5_cc_ops **cc_ops;

    context->cc_ops = NULL;
    context->num_cc_ops = 0;

    if (src_context->num_cc_ops == 0)
	return 0;

    cc_ops = FUNC2(sizeof(cc_ops[0]) * src_context->num_cc_ops);
    if (cc_ops == NULL) {
	FUNC1(context, KRB5_CC_NOMEM,
			       FUNC0("malloc: out of memory", ""));
	return KRB5_CC_NOMEM;
    }

    FUNC3(FUNC4(cc_ops), src_context->cc_ops,
	   sizeof(cc_ops[0]) * src_context->num_cc_ops);
    context->cc_ops = cc_ops;
    context->num_cc_ops = src_context->num_cc_ops;

    return 0;
}