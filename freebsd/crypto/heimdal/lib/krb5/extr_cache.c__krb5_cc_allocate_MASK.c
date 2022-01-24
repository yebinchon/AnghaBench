#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  TYPE_1__* krb5_ccache ;
typedef  int /*<<< orphan*/  krb5_cc_ops ;
struct TYPE_4__ {int /*<<< orphan*/  const* ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  KRB5_CC_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int) ; 

krb5_error_code
FUNC3(krb5_context context,
		  const krb5_cc_ops *ops,
		  krb5_ccache *id)
{
    krb5_ccache p;

    p = FUNC2 (sizeof(*p));
    if(p == NULL) {
	FUNC1(context, KRB5_CC_NOMEM,
			       FUNC0("malloc: out of memory", ""));
	return KRB5_CC_NOMEM;
    }
    p->ops = ops;
    *id = p;

    return 0;
}