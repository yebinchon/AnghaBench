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
struct local_zones {int /*<<< orphan*/  lock; } ;
struct local_zone {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  local_zone_transparent ; 
 struct local_zone* FUNC3 (struct local_zones*,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct local_zone* FUNC4 (struct local_zones*,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct local_zone*,char const*) ; 

int
FUNC8(struct local_zones* zones, const char* rr)
{
	uint8_t* rr_name;
	uint16_t rr_class, rr_type;
	size_t len;
	int labs;
	struct local_zone* z;
	int r;
	if(!FUNC2(rr, &rr_name, &rr_class, &rr_type)) {
		return 0;
	}
	labs = FUNC0(rr_name, &len);
	/* could first try readlock then get writelock if zone does not exist,
	 * but we do not add enough RRs (from multiple threads) to optimize */
	FUNC6(&zones->lock);
	z = FUNC4(zones, rr_name, len, labs, rr_class, rr_type);
	if(!z) {
		z = FUNC3(zones, rr_name, len, labs, rr_class,
			local_zone_transparent);
		if(!z) {
			FUNC5(&zones->lock);
			return 0;
		}
	} else {
		FUNC1(rr_name);
	}
	FUNC6(&z->lock);
	FUNC5(&zones->lock);
	r = FUNC7(z, rr);
	FUNC5(&z->lock);
	return r;
}