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
typedef  TYPE_1__* hx509_crl ;
typedef  int /*<<< orphan*/  hx509_context ;
struct TYPE_5__ {scalar_t__ expire; int /*<<< orphan*/  revoked; } ;

/* Variables and functions */
 int ENOMEM ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 

int
FUNC4(hx509_context context, hx509_crl *crl)
{
    int ret;

    *crl = FUNC0(1, sizeof(**crl));
    if (*crl == NULL) {
	FUNC3(context, 0, ENOMEM, "out of memory");
	return ENOMEM;
    }

    ret = FUNC2(context, "MEMORY:crl", 0, NULL, &(*crl)->revoked);
    if (ret) {
	FUNC1(*crl);
	*crl = NULL;
	return ret;
    }
    (*crl)->expire = 0;
    return ret;
}