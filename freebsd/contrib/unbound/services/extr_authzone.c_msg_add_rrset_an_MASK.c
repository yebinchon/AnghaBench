#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct regional {int dummy; } ;
struct dns_msg {TYPE_1__* rep; } ;
struct auth_zone {int /*<<< orphan*/  dclass; } ;
struct auth_rrset {int /*<<< orphan*/  type; } ;
struct auth_data {int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {scalar_t__ ns_numrrsets; scalar_t__ ar_numrrsets; size_t rrset_count; int /*<<< orphan*/  an_numrrsets; int /*<<< orphan*/ * rrsets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct auth_zone*,struct auth_data*,struct auth_rrset*,struct regional*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct regional*,struct dns_msg*) ; 
 scalar_t__ FUNC3 (struct dns_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dns_msg*) ; 

__attribute__((used)) static int
FUNC5(struct auth_zone* z, struct regional* region,
	struct dns_msg* msg, struct auth_data* node, struct auth_rrset* rrset)
{
	FUNC1(msg->rep->ns_numrrsets == 0);
	FUNC1(msg->rep->ar_numrrsets == 0);
	if(!rrset || !node)
		return 1;
	if(FUNC3(msg, node->name, node->namelen, rrset->type,
		z->dclass))
		return 1;
	/* grow array */
	if(!FUNC2(region, msg))
		return 0;
	/* copy it */
	if(!(msg->rep->rrsets[msg->rep->rrset_count] =
		FUNC0(z, node, rrset, region, 0)))
		return 0;
	msg->rep->rrset_count++;
	msg->rep->an_numrrsets++;
	FUNC4(msg);
	return 1;
}