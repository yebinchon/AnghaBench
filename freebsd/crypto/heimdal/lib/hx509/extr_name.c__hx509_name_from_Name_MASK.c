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
typedef  TYPE_1__* hx509_name ;
struct TYPE_5__ {int /*<<< orphan*/  der_name; } ;
typedef  int /*<<< orphan*/  Name ;

/* Variables and functions */
 int ENOMEM ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int
FUNC3(const Name *n, hx509_name *name)
{
    int ret;
    *name = FUNC0(1, sizeof(**name));
    if (*name == NULL)
	return ENOMEM;
    ret = FUNC1(n, &(*name)->der_name);
    if (ret) {
	FUNC2(*name);
	*name = NULL;
    }
    return ret;
}