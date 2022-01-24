#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t len; TYPE_1__* val; } ;
struct TYPE_5__ {int /*<<< orphan*/  value; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ RelativeDistinguishedName ;

/* Variables and functions */
 int HX509_NAME_CONSTRAINT_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(const RelativeDistinguishedName *c,
	  const RelativeDistinguishedName *n)
{
    size_t i;

    if (c->len != n->len)
	return HX509_NAME_CONSTRAINT_ERROR;

    for (i = 0; i < n->len; i++) {
	int diff, ret;

	if (FUNC1(&c->val[i].type, &n->val[i].type) != 0)
	    return HX509_NAME_CONSTRAINT_ERROR;
	ret = FUNC0(&c->val[i].value, &n->val[i].value, &diff);
	if (ret)
	    return ret;
	if (diff != 0)
	    return HX509_NAME_CONSTRAINT_ERROR;
    }
    return 0;
}