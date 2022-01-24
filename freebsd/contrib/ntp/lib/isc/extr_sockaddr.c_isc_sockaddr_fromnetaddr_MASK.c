#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int sin6_len; void* sin6_port; int /*<<< orphan*/  sin6_scope_id; int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_12__ {short sin_family; int sin_len; void* sin_port; int /*<<< orphan*/  sin_addr; } ;
struct TYPE_15__ {TYPE_3__ sin6; TYPE_1__ sin; } ;
struct TYPE_16__ {int length; TYPE_4__ type; } ;
typedef  TYPE_5__ isc_sockaddr_t ;
struct TYPE_13__ {int /*<<< orphan*/  in6; int /*<<< orphan*/  in; } ;
struct TYPE_17__ {int family; TYPE_2__ type; } ;
typedef  TYPE_6__ isc_netaddr_t ;
typedef  int /*<<< orphan*/  in_port_t ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__ const*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 

void
FUNC6(isc_sockaddr_t *sockaddr, const isc_netaddr_t *na,
		    in_port_t port)
{
	FUNC5(sockaddr, 0, sizeof(*sockaddr));
	sockaddr->type.sin.sin_family = (short)na->family;
	switch (na->family) {
	case AF_INET:
		sockaddr->length = sizeof(sockaddr->type.sin);
#ifdef ISC_PLATFORM_HAVESALEN
		sockaddr->type.sin.sin_len = sizeof(sockaddr->type.sin);
#endif
		sockaddr->type.sin.sin_addr = na->type.in;
		sockaddr->type.sin.sin_port = FUNC2(port);
		break;
	case AF_INET6:
		sockaddr->length = sizeof(sockaddr->type.sin6);
#ifdef ISC_PLATFORM_HAVESALEN
		sockaddr->type.sin6.sin6_len = sizeof(sockaddr->type.sin6);
#endif
		FUNC4(&sockaddr->type.sin6.sin6_addr, &na->type.in6, 16);
#ifdef ISC_PLATFORM_HAVESCOPEID
		sockaddr->type.sin6.sin6_scope_id = isc_netaddr_getzone(na);
#endif
		sockaddr->type.sin6.sin6_port = FUNC2(port);
		break;
	default:
		FUNC0(0);
	}
	FUNC1(sockaddr, link);
}