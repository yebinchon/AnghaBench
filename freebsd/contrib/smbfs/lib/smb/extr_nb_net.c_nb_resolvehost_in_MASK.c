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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; scalar_t__ sin_family; int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct hostent {scalar_t__ h_addrtype; int h_length; int /*<<< orphan*/  h_addr; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int EAFNOSUPPORT ; 
 int ENETDOWN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_in*,int) ; 
 struct hostent* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (long) ; 
 struct sockaddr_in* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 

int
FUNC7(const char *name, struct sockaddr **dest, long smbtcpport)
{
	struct hostent* h;
	struct sockaddr_in *sinp;
	int len;

	h = FUNC1(name);
	if (!h) {
		FUNC6("can't get server address `%s': ", name);
		FUNC2(NULL);
		return ENETDOWN;
	}
	if (h->h_addrtype != AF_INET) {
		FUNC6("address for `%s' is not in the AF_INET family", name);
		return EAFNOSUPPORT;
	}
	if (h->h_length != 4) {
		FUNC6("address for `%s' has invalid length", name);
		return EAFNOSUPPORT;
	}
	len = sizeof(struct sockaddr_in);
	sinp = FUNC4(len);
	if (sinp == NULL)
		return ENOMEM;
	FUNC0(sinp, len);
	sinp->sin_len = len;
	sinp->sin_family = h->h_addrtype;
	FUNC5(&sinp->sin_addr.s_addr, h->h_addr, 4);
	sinp->sin_port = FUNC3(smbtcpport);
	*dest = (struct sockaddr*)sinp;
	return 0;
}