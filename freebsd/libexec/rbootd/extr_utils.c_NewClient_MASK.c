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
typedef  int /*<<< orphan*/  u_int8_t ;
struct TYPE_4__ {int /*<<< orphan*/ * addr; } ;
typedef  TYPE_1__ CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  RMP_ADDRLEN ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

CLIENT *
FUNC5(u_int8_t *addr)
{
	CLIENT *ctmp;

	if ((ctmp = (CLIENT *) FUNC1(sizeof(CLIENT))) == NULL) {
		FUNC4(LOG_ERR, "NewClient: out of memory (%s)",
		       FUNC0(addr));
		return(NULL);
	}

	FUNC3(ctmp, 0, sizeof(CLIENT));
	FUNC2(&ctmp->addr[0], addr, RMP_ADDRLEN);
	return(ctmp);
}