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
struct query_info {int /*<<< orphan*/  qtype; } ;
struct dns_msg {int dummy; } ;
struct auth_zone {int dummy; } ;
struct auth_rrset {int /*<<< orphan*/  data; } ;
struct auth_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct auth_zone*,int /*<<< orphan*/ ,struct regional*,struct dns_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_rrset*) ; 

__attribute__((used)) static int
FUNC2(struct auth_zone* z, struct query_info* qinfo,
	struct regional* region, struct dns_msg* msg,
	struct auth_data* node, struct auth_rrset* rrset)
{
	if(!FUNC1(z, region, msg, node, rrset)) return 0;
	if(!rrset) return 1;
	if(!FUNC0(z, qinfo->qtype, region, msg, rrset->data))
		return 0;
	return 1;
}