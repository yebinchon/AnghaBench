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
struct dump {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  epref; int /*<<< orphan*/  flag; } ;
struct ccparty {int /*<<< orphan*/  state; TYPE_1__ epref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dump*,char*,char const*,struct ccparty const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct dump *d, const struct ccparty *party, const char *pfx)
{

	FUNC0(d, "%s  party(%p): %u.%u %s\n", pfx, party,
	    party->epref.flag, party->epref.epref,
	    FUNC1(party->state));
}