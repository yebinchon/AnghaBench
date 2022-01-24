#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* hx509_revoke_ctx ;
struct TYPE_9__ {size_t len; TYPE_3__* val; } ;
struct TYPE_8__ {size_t len; TYPE_3__* val; } ;
struct TYPE_10__ {scalar_t__ ref; TYPE_2__ crls; TYPE_1__ ocsps; int /*<<< orphan*/  crl; struct TYPE_10__* path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

void
FUNC5(hx509_revoke_ctx *ctx)
{
    size_t i ;

    if (ctx == NULL || *ctx == NULL)
	return;

    if ((*ctx)->ref == 0)
	FUNC0("revoke ctx refcount == 0 on free");
    if (--(*ctx)->ref > 0)
	return;

    for (i = 0; i < (*ctx)->crls.len; i++) {
	FUNC1((*ctx)->crls.val[i].path);
	FUNC2(&(*ctx)->crls.val[i].crl);
    }

    for (i = 0; i < (*ctx)->ocsps.len; i++)
	FUNC3(&(*ctx)->ocsps.val[i]);
    FUNC1((*ctx)->ocsps.val);

    FUNC1((*ctx)->crls.val);

    FUNC4(*ctx, 0, sizeof(**ctx));
    FUNC1(*ctx);
    *ctx = NULL;
}