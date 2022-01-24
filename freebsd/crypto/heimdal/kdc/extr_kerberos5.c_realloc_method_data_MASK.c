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
typedef  int /*<<< orphan*/  PA_DATA ;
typedef  TYPE_1__ METHOD_DATA ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC1(METHOD_DATA *md)
{
    PA_DATA *pa;
    pa = FUNC0(md->val, (md->len + 1) * sizeof(*md->val));
    if(pa == NULL)
	return ENOMEM;
    md->val = pa;
    md->len++;
    return 0;
}