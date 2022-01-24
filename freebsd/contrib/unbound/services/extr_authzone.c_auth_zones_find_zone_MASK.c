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
typedef  int /*<<< orphan*/  uint16_t ;
struct auth_zones {int dummy; } ;
struct auth_zone {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct auth_zone* FUNC0 (struct auth_zones*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct auth_zones*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,struct auth_zone**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,size_t*) ; 

struct auth_zone*
FUNC6(struct auth_zones* az, uint8_t* name, size_t name_len,
	uint16_t dclass)
{
	uint8_t* nm = name;
	size_t nmlen = name_len;
	struct auth_zone* z;
	if(FUNC1(az, nm, nmlen, dclass, &z)) {
		/* exact match */
		return z;
	} else {
		/* less-or-nothing */
		if(!z) return NULL; /* nothing smaller, nothing above it */
		/* we found smaller name; smaller may be above the name,
		 * but not below it. */
		nm = FUNC3(z->name, name);
		FUNC2(nm, &nmlen);
		z = NULL;
	}

	/* search up */
	while(!z) {
		z = FUNC0(az, nm, nmlen, dclass);
		if(z) return z;
		if(FUNC4(nm)) break;
		FUNC5(&nm, &nmlen);
	}
	return NULL;
}