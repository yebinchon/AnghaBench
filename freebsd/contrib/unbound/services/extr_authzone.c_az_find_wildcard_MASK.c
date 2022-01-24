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
struct query_info {size_t qname_len; int /*<<< orphan*/ * qname; } ;
struct auth_zone {size_t namelen; int /*<<< orphan*/  name; } ;
struct auth_data {size_t namelen; } ;

/* Variables and functions */
 struct auth_data* FUNC0 (struct auth_zone*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct auth_data*
FUNC4(struct auth_zone* z, struct query_info* qinfo,
	struct auth_data* ce)
{
	uint8_t* nm = qinfo->qname;
	size_t nmlen = qinfo->qname_len;
	struct auth_data* node;
	if(!FUNC3(nm, z->name))
		return NULL; /* out of zone */
	while((node=FUNC0(z, nm, nmlen))==NULL) {
		/* see if we can go up to find the wildcard */
		if(nmlen == z->namelen)
			return NULL; /* top of zone reached */
		if(ce && nmlen == ce->namelen)
			return NULL; /* ce reached */
		if(FUNC1(nm))
			return NULL; /* cannot go up */
		FUNC2(&nm, &nmlen);
	}
	return node;
}