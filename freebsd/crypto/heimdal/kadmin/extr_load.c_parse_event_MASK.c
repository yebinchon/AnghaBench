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
typedef  scalar_t__ krb5_error_code ;
struct TYPE_4__ {int /*<<< orphan*/  principal; int /*<<< orphan*/  time; } ;
typedef  TYPE_1__ Event ;

/* Variables and functions */
 int /*<<< orphan*/  context ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 char* FUNC4 (char**,char*) ; 

__attribute__((used)) static int
FUNC5(Event *ev, char *s)
{
    krb5_error_code ret;
    char *p;

    if(FUNC3(s, "-") == 0)
	return 0;
    FUNC1(ev, 0, sizeof(*ev));
    p = FUNC4(&s, ":");
    if(FUNC2(&ev->time, p) != 1)
	return -1;
    p = FUNC4(&s, ":");
    ret = FUNC0(context, p, &ev->principal);
    if (ret)
	return -1;
    return 1;
}