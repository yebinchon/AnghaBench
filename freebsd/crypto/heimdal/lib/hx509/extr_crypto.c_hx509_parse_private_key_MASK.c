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
struct hx509_private_key_ops {int (* import ) (int /*<<< orphan*/ ,TYPE_1__ const*,void const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/ * hx509_private_key ;
typedef  int /*<<< orphan*/  hx509_key_format_t ;
typedef  int /*<<< orphan*/  hx509_context ;
struct TYPE_4__ {int /*<<< orphan*/  algorithm; } ;
typedef  TYPE_1__ AlgorithmIdentifier ;

/* Variables and functions */
 int HX509_SIG_ALG_NO_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct hx509_private_key_ops* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ **,struct hx509_private_key_ops*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__ const*,void const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC6(hx509_context context,
			 const AlgorithmIdentifier *keyai,
			 const void *data,
			 size_t len,
			 hx509_key_format_t format,
			 hx509_private_key *private_key)
{
    struct hx509_private_key_ops *ops;
    int ret;

    *private_key = NULL;

    ops = FUNC1(&keyai->algorithm);
    if (ops == NULL) {
	FUNC0(context);
	return HX509_SIG_ALG_NO_SUPPORTED;
    }

    ret = FUNC3(private_key, ops, NULL);
    if (ret) {
	FUNC4(context, 0, ret, "out of memory");
	return ret;
    }

    ret = (*ops->import)(context, keyai, data, len, format, *private_key);
    if (ret)
	FUNC2(private_key);

    return ret;
}