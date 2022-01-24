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
struct local_zone {int /*<<< orphan*/  lock; int /*<<< orphan*/ * soa; int /*<<< orphan*/  name; } ;
struct local_data {int /*<<< orphan*/  name; int /*<<< orphan*/ * rrsets; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_DS ; 
 int /*<<< orphan*/  FUNC0 (struct local_zone*,struct local_data*,int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (struct local_data*,int /*<<< orphan*/ ) ; 
 struct local_zone* FUNC2 (struct local_zones*,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct local_data* FUNC6 (struct local_zone*,int /*<<< orphan*/ *,size_t,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(struct local_zones* zones, 
	uint8_t* name, size_t len, int labs, uint16_t dclass)
{
	/* find zone */
	struct local_zone* z;
	struct local_data* d;

	/* remove DS */
	FUNC3(&zones->lock);
	z = FUNC2(zones, name, len, labs, dclass, LDNS_RR_TYPE_DS);
	if(z) {
		FUNC5(&z->lock);
		d = FUNC6(z, name, len, labs);
		if(d) {
			FUNC1(d, LDNS_RR_TYPE_DS);
			FUNC0(z, d, name, len, labs);
		}
		FUNC4(&z->lock);
	}
	FUNC4(&zones->lock);

	/* remove other types */
	FUNC3(&zones->lock);
	z = FUNC2(zones, name, len, labs, dclass, 0);
	if(!z) {
		/* no such zone, we're done */
		FUNC4(&zones->lock);
		return;
	}
	FUNC5(&z->lock);
	FUNC4(&zones->lock);

	/* find the domain */
	d = FUNC6(z, name, len, labs);
	if(d) {
		/* no memory recycling for zone deletions ... */
		d->rrsets = NULL;
		/* did we delete the soa record ? */
		if(FUNC7(d->name, z->name) == 0)
			z->soa = NULL;

		/* cleanup the empty nonterminals for this name */
		FUNC0(z, d, name, len, labs);
	}

	FUNC4(&z->lock);
}