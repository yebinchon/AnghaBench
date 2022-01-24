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
struct regional {int dummy; } ;
struct dns_msg {int dummy; } ;
struct auth_zone {int dummy; } ;
struct auth_rrset {int dummy; } ;
struct auth_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_NSEC3 ; 
 struct auth_rrset* FUNC0 (struct auth_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_rrset*) ; 

__attribute__((used)) static int
FUNC2(struct auth_zone* z, struct regional* region,
	struct dns_msg* msg, struct auth_data* node)
{
	struct auth_rrset* nsec3;
	if(!node) return 1; /* no node, skip this */
	nsec3 = FUNC0(node, LDNS_RR_TYPE_NSEC3);
	if(!nsec3) return 1; /* if no nsec3 RR, skip it */
	if(!FUNC1(z, region, msg, node, nsec3)) return 0;
	return 1;
}