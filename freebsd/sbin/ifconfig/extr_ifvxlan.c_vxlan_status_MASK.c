#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_3__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; int /*<<< orphan*/  sa_len; } ;
struct TYPE_5__ {struct sockaddr sa; } ;
struct TYPE_4__ {struct sockaddr sa; } ;
struct ifvxlancfg {int vxlc_vni; int vxlc_port_min; int vxlc_port_max; int vxlc_ttl; int vxlc_ftable_cnt; int vxlc_ftable_max; int vxlc_ftable_timeout; scalar_t__ vxlc_learn; TYPE_2__ vxlc_remote_sa; TYPE_1__ vxlc_local_sa; } ;
typedef  int /*<<< orphan*/  srcport ;
typedef  int /*<<< orphan*/  src ;
typedef  int /*<<< orphan*/  dstport ;
typedef  int /*<<< orphan*/  dst ;
typedef  int /*<<< orphan*/  cfg ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int NI_MAXHOST ; 
 int NI_MAXSERV ; 
 int NI_NUMERICHOST ; 
 int NI_NUMERICSERV ; 
 int /*<<< orphan*/  VXLAN_CMD_GET_CONFIG ; 
 int VXLAN_VNI_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct ifvxlancfg*,int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct ifvxlancfg*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sockaddr*,int /*<<< orphan*/ ,char*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC8(int s)
{
	struct ifvxlancfg cfg;
	char src[NI_MAXHOST], dst[NI_MAXHOST];
	char srcport[NI_MAXSERV], dstport[NI_MAXSERV];
	struct sockaddr *lsa, *rsa;
	int vni, mc, ipv6;

	FUNC2(&cfg, sizeof(cfg));

	if (FUNC3(s, VXLAN_CMD_GET_CONFIG, &cfg, sizeof(cfg), 0) < 0)
		return;

	vni = cfg.vxlc_vni;
	lsa = &cfg.vxlc_local_sa.sa;
	rsa = &cfg.vxlc_remote_sa.sa;
	ipv6 = rsa->sa_family == AF_INET6;

	/* Just report nothing if the network identity isn't set yet. */
	if (vni >= VXLAN_VNI_MAX)
		return;

	if (FUNC4(lsa, lsa->sa_len, src, sizeof(src),
	    srcport, sizeof(srcport), NI_NUMERICHOST | NI_NUMERICSERV) != 0)
		src[0] = srcport[0] = '\0';
	if (FUNC4(rsa, rsa->sa_len, dst, sizeof(dst),
	    dstport, sizeof(dstport), NI_NUMERICHOST | NI_NUMERICSERV) != 0)
		dst[0] = dstport[0] = '\0';

	if (!ipv6) {
		struct sockaddr_in *sin = (struct sockaddr_in *)rsa;
		mc = FUNC1(FUNC5(sin->sin_addr.s_addr));
	} else {
		struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)rsa;
		mc = FUNC0(&sin6->sin6_addr);
	}

	FUNC6("\tvxlan vni %d", vni);
	FUNC6(" local %s%s%s:%s", ipv6 ? "[" : "", src, ipv6 ? "]" : "",
	    srcport);
	FUNC6(" %s %s%s%s:%s", mc ? "group" : "remote", ipv6 ? "[" : "",
	    dst, ipv6 ? "]" : "", dstport);

	if (verbose) {
		FUNC6("\n\t\tconfig: ");
		FUNC6("%slearning portrange %d-%d ttl %d",
		    cfg.vxlc_learn ? "" : "no", cfg.vxlc_port_min,
		    cfg.vxlc_port_max, cfg.vxlc_ttl);
		FUNC6("\n\t\tftable: ");
		FUNC6("cnt %d max %d timeout %d",
		    cfg.vxlc_ftable_cnt, cfg.vxlc_ftable_max,
		    cfg.vxlc_ftable_timeout);
	}

	FUNC7('\n');
}