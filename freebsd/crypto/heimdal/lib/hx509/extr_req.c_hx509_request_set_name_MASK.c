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
typedef  TYPE_1__* hx509_request ;
typedef  scalar_t__ hx509_name ;
typedef  int /*<<< orphan*/  hx509_context ;
struct TYPE_3__ {scalar_t__ name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 

int
FUNC2(hx509_context context,
			hx509_request req,
			hx509_name name)
{
    if (req->name)
	FUNC1(&req->name);
    if (name) {
	int ret = FUNC0(context, name, &req->name);
	if (ret)
	    return ret;
    }
    return 0;
}