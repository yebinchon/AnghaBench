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
struct TYPE_3__ {unsigned int len; int /*<<< orphan*/ * val; } ;
typedef  TYPE_1__ hx509_path ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(hx509_path *path)
{
    unsigned i;

    for (i = 0; i < path->len; i++)
	FUNC1(path->val[i]);
    FUNC0(path->val);
    path->val = NULL;
    path->len = 0;
}