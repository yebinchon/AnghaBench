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
typedef  int /*<<< orphan*/ * command ;
struct TYPE_2__ {int /*<<< orphan*/  w_end; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int ERR_NAME ; 
 int ERR_NOTWHILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  noexec ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__* whyles ; 

void
FUNC4(Char **v, struct command *c)
{
    FUNC0(v);
    FUNC0(c);
    if (!whyles)
	FUNC3(ERR_NAME | ERR_NOTWHILE);
    FUNC1(&whyles->w_end);
    if (!noexec)
	FUNC2();
}