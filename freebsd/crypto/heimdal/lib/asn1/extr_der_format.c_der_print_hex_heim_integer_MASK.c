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
typedef  scalar_t__ ssize_t ;
struct TYPE_3__ {scalar_t__ negative; int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ heim_integer ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (char**,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 

int
FUNC3 (const heim_integer *data, char **p)
{
    ssize_t len;
    char *q;

    len = FUNC2(data->data, data->length, p);
    if (len < 0)
	return ENOMEM;

    if (data->negative) {
	len = FUNC0(&q, "-%s", *p);
	FUNC1(*p);
	if (len < 0)
	    return ENOMEM;
	*p = q;
    }
    return 0;
}