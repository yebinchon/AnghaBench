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
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct local_zone* FUNC4 (struct local_zones*,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int FUNC9 (struct local_zone*,char const*) ; 

__attribute__((used)) static int
FUNC10(struct local_zones* zones, const char* rr)
{
	uint8_t* rr_name;
	uint16_t rr_class, rr_type;
	size_t len;
	int labs;
	struct local_zone* z;
	int r;
	if(!FUNC3(rr, &rr_name, &rr_class, &rr_type)) {
		FUNC8("bad rr %s", rr);
		return 0;
	}
	labs = FUNC0(rr_name, &len);
	FUNC5(&zones->lock);
	z = FUNC4(zones, rr_name, len, labs, rr_class, rr_type);
	if(!z) {
		FUNC6(&zones->lock);
		FUNC1("internal error: no zone for rr %s", rr);
	}
	FUNC7(&z->lock);
	FUNC6(&zones->lock);
	FUNC2(rr_name);
	r = FUNC9(z, rr);
	FUNC6(&z->lock);
	return r;
}