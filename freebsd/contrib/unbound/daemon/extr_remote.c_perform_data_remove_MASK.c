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
struct local_zones {int dummy; } ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct local_zones*,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,size_t*,int*) ; 

__attribute__((used)) static int
FUNC3(RES* ssl, struct local_zones* zones, char* arg)
{
	uint8_t* nm;
	int nmlabs;
	size_t nmlen;
	if(!FUNC2(ssl, arg, &nm, &nmlen, &nmlabs))
		return 0;
	FUNC1(zones, nm,
		nmlen, nmlabs, LDNS_RR_CLASS_IN);
	FUNC0(nm);
	return 1;
}