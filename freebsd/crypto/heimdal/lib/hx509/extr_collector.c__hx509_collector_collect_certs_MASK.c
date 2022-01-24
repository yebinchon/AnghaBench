#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t len; int /*<<< orphan*/ * data; } ;
struct hx509_collector {TYPE_1__ val; int /*<<< orphan*/  certs; } ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/ * hx509_certs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC5(hx509_context context,
			       struct hx509_collector *c,
			       hx509_certs *ret_certs)
{
    hx509_certs certs;
    int ret;
    size_t i;

    *ret_certs = NULL;

    ret = FUNC1(context, "MEMORY:collector-store", 0, NULL, &certs);
    if (ret)
	return ret;

    ret = FUNC2(context, certs, c->certs);
    if (ret) {
	FUNC0(&certs);
	return ret;
    }

    for (i = 0; i < c->val.len; i++) {
	ret = FUNC4(context, c->val.data[i], certs);
	if (ret == 0)
	    continue;
	ret = FUNC3(context, c->val.data[i], certs);
	if (ret == 0)
	    continue;
    }

    *ret_certs = certs;

    return 0;
}