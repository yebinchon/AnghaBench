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
typedef  scalar_t__ uint16_t ;
struct local_zones {int /*<<< orphan*/  lock; } ;
struct local_zone {int /*<<< orphan*/  lock; } ;
struct config_strlist {int /*<<< orphan*/  str; struct config_strlist* next; } ;
struct config_file {struct config_strlist* local_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 int FUNC0 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,size_t*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct local_zones*) ; 
 int /*<<< orphan*/  local_zone_transparent ; 
 int /*<<< orphan*/  FUNC6 (struct local_zones*,int /*<<< orphan*/ *,size_t,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 struct local_zone* FUNC11 (struct local_zones*,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int
FUNC13(struct local_zones* zones, struct config_file* cfg)
{
	/* walk over all items that have no parent zone and find
	 * the name that covers them all (could be the root) and
	 * add that as a transparent zone */
	struct config_strlist* p;
	int have_name = 0;
	int have_other_classes = 0;
	uint16_t dclass = 0;
	uint8_t* nm = 0;
	size_t nmlen = 0;
	int nmlabs = 0;
	int match = 0; /* number of labels match count */

	FUNC5(zones); /* to enable local_zones_lookup() */
	for(p = cfg->local_data; p; p = p->next) {
		uint8_t* rr_name;
		uint16_t rr_class, rr_type;
		size_t len;
		int labs;
		if(!FUNC4(p->str, &rr_name, &rr_class, &rr_type)) {
			FUNC9("Bad local-data RR %s", p->str);
			return 0;
		}
		labs = FUNC0(rr_name, &len);
		FUNC7(&zones->lock);
		if(!FUNC6(zones, rr_name, len, labs, rr_class,
			rr_type)) {
			if(!have_name) {
				dclass = rr_class;
				nm = rr_name;
				nmlen = len;
				nmlabs = labs;
				match = labs;
				have_name = 1;
			} else {
				int m;
				if(rr_class != dclass) {
					/* process other classes later */
					FUNC3(rr_name);
					have_other_classes = 1;
					FUNC8(&zones->lock);
					continue;
				}
				/* find smallest shared topdomain */
				(void)FUNC1(nm, nmlabs, 
					rr_name, labs, &m);
				FUNC3(rr_name);
				if(m < match)
					match = m;
			}
		} else FUNC3(rr_name);
		FUNC8(&zones->lock);
	}
	if(have_name) {
		uint8_t* n2;
		struct local_zone* z;
		/* allocate zone of smallest shared topdomain to contain em */
		n2 = nm;
		FUNC2(&n2, &nmlen, nmlabs - match);
		n2 = FUNC12(n2, nmlen);
		FUNC3(nm);
		if(!n2) {
			FUNC9("out of memory");
			return 0;
		}
		FUNC10(VERB_ALGO, "implicit transparent local-zone", 
			n2, 0, dclass);
		if(!(z=FUNC11(zones, n2, nmlen, match, 
			local_zone_transparent, dclass))) {
			return 0;
		}
		FUNC8(&z->lock);
	}
	if(have_other_classes) { 
		/* restart to setup other class */
		return FUNC13(zones, cfg);
	}
	return 1;
}