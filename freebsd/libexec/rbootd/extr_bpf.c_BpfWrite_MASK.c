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
struct TYPE_4__ {int /*<<< orphan*/  rmplen; int /*<<< orphan*/  rmp; } ;
typedef  TYPE_1__ RMPCONN ;

/* Variables and functions */
 int /*<<< orphan*/  BpfFd ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC3(RMPCONN *rconn)
{
	if (FUNC2(BpfFd, (char *)&rconn->rmp, rconn->rmplen) < 0) {
		FUNC1(LOG_ERR, "write: %s: %m", FUNC0(rconn));
		return(0);
	}

	return(1);
}