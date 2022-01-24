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
struct TYPE_3__ {int len; int /*<<< orphan*/ * val; } ;
typedef  TYPE_1__ hx509_path ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_cert ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 

int
FUNC3(hx509_context context, hx509_path *path, hx509_cert cert)
{
    hx509_cert *val;
    val = FUNC2(path->val, (path->len + 1) * sizeof(path->val[0]));
    if (val == NULL) {
	FUNC1(context, 0, ENOMEM, "out of memory");
	return ENOMEM;
    }

    path->val = val;
    path->val[path->len] = FUNC0(cert);
    path->len++;

    return 0;
}