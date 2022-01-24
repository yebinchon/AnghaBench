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
struct local_zone {int type; int /*<<< orphan*/  lock; } ;
typedef  enum localzone_type { ____Placeholder_localzone_type } localzone_type ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct local_zones*,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ,int) ; 
 struct local_zone* FUNC4 (struct local_zones*,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static int
FUNC9(RES* ssl, struct local_zones* zones, char* arg)
{
	uint8_t* nm;
	int nmlabs;
	size_t nmlen;
	char* arg2;
	enum localzone_type t;
	struct local_zone* z;
	if(!FUNC0(ssl, arg, &arg2))
		return 0;
	if(!FUNC7(ssl, arg, &nm, &nmlen, &nmlabs))
		return 0;
	if(!FUNC2(arg2, &t)) {
		FUNC8(ssl, "error not a zone type. %s\n", arg2);
		FUNC1(nm);
		return 0;
	}
	FUNC6(&zones->lock);
	if((z=FUNC4(zones, nm, nmlen, 
		nmlabs, LDNS_RR_CLASS_IN))) {
		/* already present in tree */
		FUNC6(&z->lock);
		z->type = t; /* update type anyway */
		FUNC5(&z->lock);
		FUNC1(nm);
		FUNC5(&zones->lock);
		return 1;
	}
	if(!FUNC3(zones, nm, nmlen, 
		nmlabs, LDNS_RR_CLASS_IN, t)) {
		FUNC5(&zones->lock);
		FUNC8(ssl, "error out of memory\n");
		return 0;
	}
	FUNC5(&zones->lock);
	return 1;
}