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
struct sockaddr {scalar_t__ sa_family; int /*<<< orphan*/  sa_len; } ;
struct ifreq {int /*<<< orphan*/  ifr_name; int /*<<< orphan*/  ifr_addr; } ;
typedef  int /*<<< orphan*/  src ;
typedef  int /*<<< orphan*/  ifr ;
typedef  int /*<<< orphan*/  dst ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int NI_MAXHOST ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 int /*<<< orphan*/  SIOCGIFPDSTADDR ; 
 int /*<<< orphan*/  SIOCGIFPSRCADDR ; 
 scalar_t__ FUNC0 (struct sockaddr const*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(int s)
{
	char src[NI_MAXHOST];
	char dst[NI_MAXHOST];
	struct ifreq ifr;
	const struct sockaddr *sa = (const struct sockaddr *) &ifr.ifr_addr;

	FUNC2(&ifr, 0, sizeof(ifr));
	FUNC4(ifr.ifr_name, name, IFNAMSIZ);

	if (FUNC1(s, SIOCGIFPSRCADDR, (caddr_t)&ifr) < 0)
		return;
	if (sa->sa_family != AF_INET)
		return;
	if (FUNC0(sa, sa->sa_len, src, sizeof(src), 0, 0, NI_NUMERICHOST) != 0)
		src[0] = '\0';

	if (FUNC1(s, SIOCGIFPDSTADDR, (caddr_t)&ifr) < 0)
		return;
	if (sa->sa_family != AF_INET)
		return;
	if (FUNC0(sa, sa->sa_len, dst, sizeof(dst), 0, 0, NI_NUMERICHOST) != 0)
		dst[0] = '\0';

	FUNC3("\ttunnel inet %s --> %s\n", src, dst);
}