#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct in6_addr {unsigned char* s6_addr; } ;
typedef  int /*<<< orphan*/  isc_uint32_t ;
typedef  scalar_t__ isc_result_t ;
struct TYPE_4__ {unsigned int ifindex; int /*<<< orphan*/  name; int /*<<< orphan*/  netmask; int /*<<< orphan*/  address; int /*<<< orphan*/  flags; int /*<<< orphan*/  af; } ;
struct TYPE_5__ {scalar_t__ valid; TYPE_1__ current; int /*<<< orphan*/  entry; int /*<<< orphan*/ * proc; } ;
typedef  TYPE_2__ isc_interfaceiter_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int IFA_F_TENTATIVE ; 
 int /*<<< orphan*/  IF_NAMESIZE ; 
 int /*<<< orphan*/  INTERFACE_F_UP ; 
 int /*<<< orphan*/  ISC_LOGCATEGORY_GENERAL ; 
 int /*<<< orphan*/  ISC_LOGMODULE_INTERFACE ; 
 int /*<<< orphan*/  ISC_LOG_ERROR ; 
 scalar_t__ ISC_R_FAILURE ; 
 scalar_t__ ISC_R_IGNORE ; 
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  isc_lctx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct in6_addr*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,char*,unsigned int*,int*,int*,int*,char*) ; 
 char const* FUNC5 (char const*,char) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static isc_result_t
FUNC8(isc_interfaceiter_t *iter) {
	char address[33];
	char name[IF_NAMESIZE+1];
	struct in6_addr addr6;
	unsigned int ifindex;
	int prefix, scope, flags;
	int res;
	unsigned int i;

	if (iter->valid != ISC_R_SUCCESS)
		return (iter->valid);
	if (iter->proc == NULL) {
		FUNC0(isc_lctx, ISC_LOGCATEGORY_GENERAL,
			      ISC_LOGMODULE_INTERFACE, ISC_LOG_ERROR,
			      "/proc/net/if_inet6:iter->proc == NULL");
		return (ISC_R_FAILURE);
	}

	res = FUNC4(iter->entry, "%32[a-f0-9] %x %x %x %x %16s\n",
		     address, &ifindex, &prefix, &scope, &flags, name);
	if (res != 6) {
		FUNC0(isc_lctx, ISC_LOGCATEGORY_GENERAL,
			      ISC_LOGMODULE_INTERFACE, ISC_LOG_ERROR,
			      "/proc/net/if_inet6:sscanf() -> %d (expected 6)",
			      res);
		return (ISC_R_FAILURE);
	}
	if (FUNC6(address) != 32) {
		FUNC0(isc_lctx, ISC_LOGCATEGORY_GENERAL,
			      ISC_LOGMODULE_INTERFACE, ISC_LOG_ERROR,
			      "/proc/net/if_inet6:strlen(%s) != 32", address);
		return (ISC_R_FAILURE);
	}
	/*
	** Ignore DAD addresses --
	** we can't bind to them until they are resolved
	*/
#ifdef IFA_F_TENTATIVE
	if (flags & IFA_F_TENTATIVE)
		return (ISC_R_IGNORE);
#endif

	for (i = 0; i < 16; i++) {
		unsigned char byte;
		static const char hex[] = "0123456789abcdef";
		byte = ((FUNC5(hex, address[i * 2]) - hex) << 4) |
		       (FUNC5(hex, address[i * 2 + 1]) - hex);
		addr6.s6_addr[i] = byte;
	}
	iter->current.af = AF_INET6;
	iter->current.flags = INTERFACE_F_UP;
	FUNC1(&iter->current.address, &addr6);
	iter->current.ifindex = ifindex;
	if (FUNC2(&iter->current.address)) {
		FUNC3(&iter->current.address,
				    (isc_uint32_t)ifindex);
	}
	for (i = 0; i < 16; i++) {
		if (prefix > 8) {
			addr6.s6_addr[i] = 0xff;
			prefix -= 8;
		} else {
			addr6.s6_addr[i] = (0xff << (8 - prefix)) & 0xff;
			prefix = 0;
		}
	}
	FUNC1(&iter->current.netmask, &addr6);
	FUNC7(iter->current.name, name, sizeof(iter->current.name));
	return (ISC_R_SUCCESS);
}