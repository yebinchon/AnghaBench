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
struct auth_zone {scalar_t__ namelen; } ;
struct auth_rrset {scalar_t__ type; struct auth_rrset* next; } ;
struct auth_data {scalar_t__ namelen; struct auth_rrset* rrsets; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_SOA ; 
 int /*<<< orphan*/  FUNC0 (struct auth_zone*,struct auth_data*,struct auth_rrset*,int /*<<< orphan*/ *) ; 
 struct auth_rrset* FUNC1 (struct auth_data*,scalar_t__) ; 

__attribute__((used)) static int
FUNC2(struct auth_zone* z, struct auth_data* n, FILE* out)
{
	struct auth_rrset* r;
	/* if this is zone apex, write SOA first */
	if(z->namelen == n->namelen) {
		struct auth_rrset* soa = FUNC1(n, LDNS_RR_TYPE_SOA);
		if(soa) {
			if(!FUNC0(z, n, soa, out))
				return 0;
		}
	}
	/* write all the RRsets for this domain */
	for(r = n->rrsets; r; r = r->next) {
		if(z->namelen == n->namelen &&
			r->type == LDNS_RR_TYPE_SOA)
			continue; /* skip SOA here */
		if(!FUNC0(z, n, r, out))
			return 0;
	}
	return 1;
}