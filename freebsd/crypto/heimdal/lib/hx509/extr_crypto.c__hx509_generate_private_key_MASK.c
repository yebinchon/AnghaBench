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
struct hx509_private_key_ops {int (* generate_private_key ) (int /*<<< orphan*/ ,struct hx509_generate_private_context*,int /*<<< orphan*/ *) ;} ;
struct hx509_generate_private_context {int /*<<< orphan*/  key_oid; } ;
typedef  int /*<<< orphan*/ * hx509_private_key ;
typedef  int /*<<< orphan*/  hx509_context ;

/* Variables and functions */
 int HX509_SIG_ALG_NO_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct hx509_private_key_ops* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ **,struct hx509_private_key_ops*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct hx509_generate_private_context*,int /*<<< orphan*/ *) ; 

int
FUNC6(hx509_context context,
			    struct hx509_generate_private_context *ctx,
			    hx509_private_key *private_key)
{
    struct hx509_private_key_ops *ops;
    int ret;

    *private_key = NULL;

    ops = FUNC1(ctx->key_oid);
    if (ops == NULL) {
	FUNC0(context);
	return HX509_SIG_ALG_NO_SUPPORTED;
    }

    ret = FUNC3(private_key, ops, NULL);
    if (ret) {
	FUNC4(context, 0, ret, "out of memory");
	return ret;
    }

    ret = (*ops->generate_private_key)(context, ctx, *private_key);
    if (ret)
	FUNC2(private_key);

    return ret;
}