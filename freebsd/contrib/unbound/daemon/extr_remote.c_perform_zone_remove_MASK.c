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
struct local_zones {int /*<<< orphan*/  lock; } ;
struct local_zone {int dummy; } ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct local_zones*,struct local_zone*) ; 
 struct local_zone* FUNC2 (struct local_zones*,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,size_t*,int*) ; 

__attribute__((used)) static int
FUNC6(RES* ssl, struct local_zones* zones, char* arg)
{
	uint8_t* nm;
	int nmlabs;
	size_t nmlen;
	struct local_zone* z;
	if(!FUNC5(ssl, arg, &nm, &nmlen, &nmlabs))
		return 0;
	FUNC4(&zones->lock);
	if((z=FUNC2(zones, nm, nmlen, 
		nmlabs, LDNS_RR_CLASS_IN))) {
		/* present in tree */
		FUNC1(zones, z);
	}
	FUNC3(&zones->lock);
	FUNC0(nm);
	return 1;
}