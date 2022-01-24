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
struct ieee80211req_mesh_route {int imr_nhops; int imr_metric; int imr_lifetime; int imr_lastmseq; int imr_flags; scalar_t__ imr_nexthop; scalar_t__ imr_dest; } ;
struct ieee80211req {int i_len; struct ieee80211req_mesh_route** i_data; int /*<<< orphan*/  i_val; int /*<<< orphan*/  i_type; int /*<<< orphan*/  i_name; } ;
struct ether_addr {int dummy; } ;
typedef  int /*<<< orphan*/  routes ;
typedef  int /*<<< orphan*/  ireq ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IOC_MESH_RTCMD ; 
 int IEEE80211_MESHRT_FLAGS_DISCOVER ; 
 int IEEE80211_MESHRT_FLAGS_GATE ; 
 int IEEE80211_MESHRT_FLAGS_PROXY ; 
 int IEEE80211_MESHRT_FLAGS_VALID ; 
 int /*<<< orphan*/  IEEE80211_MESH_RTCMD_LIST ; 
 int /*<<< orphan*/  SIOCG80211 ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 char* FUNC1 (struct ether_addr const*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct ieee80211req*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211req*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(int s)
{
	struct ieee80211req ireq;
	struct ieee80211req_mesh_route routes[128];
	struct ieee80211req_mesh_route *rt;

	(void) FUNC3(&ireq, 0, sizeof(ireq));
	(void) FUNC5(ireq.i_name, name, sizeof(ireq.i_name));
	ireq.i_type = IEEE80211_IOC_MESH_RTCMD;
	ireq.i_val = IEEE80211_MESH_RTCMD_LIST;
	ireq.i_data = &routes;
	ireq.i_len = sizeof(routes);
	if (FUNC2(s, SIOCG80211, &ireq) < 0)
	 	FUNC0(1, "unable to get the Mesh routing table");

	FUNC4("%-17.17s %-17.17s %4s %4s %4s %6s %s\n"
		, "DEST"
		, "NEXT HOP"
		, "HOPS"
		, "METRIC"
		, "LIFETIME"
		, "MSEQ"
		, "FLAGS");

	for (rt = &routes[0]; rt - &routes[0] < ireq.i_len / sizeof(*rt); rt++){
		FUNC4("%s ",
		    FUNC1((const struct ether_addr *)rt->imr_dest));
		FUNC4("%s %4u   %4u   %6u %6u    %c%c\n",
			FUNC1((const struct ether_addr *)rt->imr_nexthop),
			rt->imr_nhops, rt->imr_metric, rt->imr_lifetime,
			rt->imr_lastmseq,
			(rt->imr_flags & IEEE80211_MESHRT_FLAGS_DISCOVER) ?
			    'D' :
			(rt->imr_flags & IEEE80211_MESHRT_FLAGS_VALID) ?
			    'V' : '!',
			(rt->imr_flags & IEEE80211_MESHRT_FLAGS_PROXY) ?
			    'P' :
			(rt->imr_flags & IEEE80211_MESHRT_FLAGS_GATE) ?
			    'G' :' ');
	}
}