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
struct TYPE_4__ {int length; int /*<<< orphan*/ * components; } ;
typedef  TYPE_1__ heim_oid ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int
FUNC2 (const heim_oid *from, heim_oid *to)
{
    to->length     = from->length;
    to->components = FUNC0(to->length * sizeof(*to->components));
    if (to->length != 0 && to->components == NULL)
	return ENOMEM;
    FUNC1(to->components, from->components,
	   to->length * sizeof(*to->components));
    return 0;
}