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
struct TYPE_2__ {scalar_t__ len; int /*<<< orphan*/ * data; } ;
struct hx509_collector {int /*<<< orphan*/  unenvelop_certs; int /*<<< orphan*/  certs; TYPE_1__ val; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  hx509_lock ;
typedef  int /*<<< orphan*/  hx509_context ;

/* Variables and functions */
 int ENOMEM ; 
 struct hx509_collector* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hx509_collector*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 

int
FUNC5(hx509_context context, hx509_lock lock, struct hx509_collector **collector)
{
    struct hx509_collector *c;
    int ret;

    *collector = NULL;

    c = FUNC0(1, sizeof(*c));
    if (c == NULL) {
	FUNC4(context, 0, ENOMEM, "out of memory");
	return ENOMEM;
    }
    c->lock = lock;

    ret = FUNC3(context, "MEMORY:collector-unenvelop-cert",
			   0,NULL, &c->unenvelop_certs);
    if (ret) {
	FUNC1(c);
	return ret;
    }
    c->val.data = NULL;
    c->val.len = 0;
    ret = FUNC3(context, "MEMORY:collector-tmp-store",
			   0, NULL, &c->certs);
    if (ret) {
	FUNC2(&c->unenvelop_certs);
	FUNC1(c);
	return ret;
    }

    *collector = c;
    return 0;
}