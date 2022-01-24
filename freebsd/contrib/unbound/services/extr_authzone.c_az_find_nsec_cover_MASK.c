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
struct auth_zone {size_t namelen; } ;
struct auth_rrset {int dummy; } ;
struct auth_data {size_t namelen; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_NSEC ; 
 struct auth_rrset* FUNC0 (struct auth_data*,int /*<<< orphan*/ ) ; 
 struct auth_data* FUNC1 (struct auth_zone*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,size_t*) ; 

__attribute__((used)) static struct auth_rrset*
FUNC4(struct auth_zone* z, struct auth_data** node)
{
	uint8_t* nm = (*node)->name;
	size_t nmlen = (*node)->namelen;
	struct auth_rrset* rrset;
	/* find the NSEC for the smallest-or-equal node */
	/* if node == NULL, we did not find a smaller name.  But the zone
	 * name is the smallest name and should have an NSEC. So there is
	 * no NSEC to return (for a properly signed zone) */
	/* for empty nonterminals, the auth-data node should not exist,
	 * and thus we don't need to go rbtree_previous here to find
	 * a domain with an NSEC record */
	/* but there could be glue, and if this is node, then it has no NSEC.
	 * Go up to find nonglue (previous) NSEC-holding nodes */
	while((rrset=FUNC0(*node, LDNS_RR_TYPE_NSEC)) == NULL) {
		if(FUNC2(nm)) return NULL;
		if(nmlen == z->namelen) return NULL;
		FUNC3(&nm, &nmlen);
		/* adjust *node for the nsec rrset to find in */
		*node = FUNC1(z, nm, nmlen);
	}
	return rrset;
}