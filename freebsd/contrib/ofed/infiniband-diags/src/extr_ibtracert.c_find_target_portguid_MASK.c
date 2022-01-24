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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  ib_portid_t ;
struct TYPE_3__ {int portguid; } ;
typedef  TYPE_1__ Port ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint64_t FUNC2(ib_portid_t * to)
{
	Node tonode;
	Port toport;

	if (FUNC1(&tonode, &toport, to) < 0) {
		FUNC0("can't find to port\n");
		return -1;
	}

	return toport.portguid;
}