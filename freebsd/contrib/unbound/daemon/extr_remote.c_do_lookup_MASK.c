#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct worker {int dummy; } ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct worker*,int /*<<< orphan*/ *,size_t,int) ; 

__attribute__((used)) static void
FUNC3(RES* ssl, struct worker* worker, char* arg)
{
	uint8_t* nm;
	int nmlabs;
	size_t nmlen;
	if(!FUNC1(ssl, arg, &nm, &nmlen, &nmlabs))
		return;
	(void)FUNC2(ssl, worker, nm, nmlen, nmlabs);
	FUNC0(nm);
}