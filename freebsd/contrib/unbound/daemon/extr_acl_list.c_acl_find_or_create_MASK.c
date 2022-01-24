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
struct acl_list {int /*<<< orphan*/  tree; } ;
struct acl_addr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  UNBOUND_DNS_PORT ; 
 int /*<<< orphan*/  acl_allow ; 
 scalar_t__ FUNC0 (struct acl_list*,struct sockaddr_storage*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,struct sockaddr_storage*,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static struct acl_addr*
FUNC4(struct acl_list* acl, const char* str)
{
	struct acl_addr* node;
	struct sockaddr_storage addr;
	int net;
	socklen_t addrlen;
	if(!FUNC3(str, UNBOUND_DNS_PORT, &addr, &addrlen, &net)) {
		FUNC2("cannot parse netblock: %s", str);
		return NULL;
	}
	/* find or create node */
	if(!(node=(struct acl_addr*)FUNC1(&acl->tree, &addr,
		addrlen, net))) {
		/* create node, type 'allow' since otherwise tags are
		 * pointless, can override with specific access-control: cfg */
		if(!(node=(struct acl_addr*)FUNC0(acl, &addr,
			addrlen, net, acl_allow, 1))) {
			FUNC2("out of memory");
			return NULL;
		}
	}
	return node;
}