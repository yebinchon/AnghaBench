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
struct sockaddr_storage {int dummy; } ;
struct acl_list {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  enum acl_access { ____Placeholder_acl_access } acl_access ;

/* Variables and functions */
 int /*<<< orphan*/  UNBOUND_DNS_PORT ; 
 int acl_allow ; 
 int acl_allow_setrd ; 
 int acl_allow_snoop ; 
 int acl_deny ; 
 int acl_deny_non_local ; 
 int /*<<< orphan*/  FUNC0 (struct acl_list*,struct sockaddr_storage*,int /*<<< orphan*/ ,int,int,int) ; 
 int acl_refuse ; 
 int acl_refuse_non_local ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,struct sockaddr_storage*,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static int
FUNC4(struct acl_list* acl, const char* str, const char* s2,
	int complain_duplicates)
{
	struct sockaddr_storage addr;
	int net;
	socklen_t addrlen;
	enum acl_access control;
	if(FUNC3(s2, "allow") == 0)
		control = acl_allow;
	else if(FUNC3(s2, "deny") == 0)
		control = acl_deny;
	else if(FUNC3(s2, "refuse") == 0)
		control = acl_refuse;
	else if(FUNC3(s2, "deny_non_local") == 0)
		control = acl_deny_non_local;
	else if(FUNC3(s2, "refuse_non_local") == 0)
		control = acl_refuse_non_local;
	else if(FUNC3(s2, "allow_snoop") == 0)
		control = acl_allow_snoop;
	else if(FUNC3(s2, "allow_setrd") == 0)
		control = acl_allow_setrd;
	else {
		FUNC1("access control type %s unknown", str);
		return 0;
	}
	if(!FUNC2(str, UNBOUND_DNS_PORT, &addr, &addrlen, &net)) {
		FUNC1("cannot parse access control: %s %s", str, s2);
		return 0;
	}
	if(!FUNC0(acl, &addr, addrlen, net, control, 
		complain_duplicates)) {
		FUNC1("out of memory");
		return 0;
	}
	return 1;
}