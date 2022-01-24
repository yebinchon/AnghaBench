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

/* Variables and functions */
#define  IEEE80211_MACCMD_POLICY_ALLOW 131 
#define  IEEE80211_MACCMD_POLICY_DENY 130 
#define  IEEE80211_MACCMD_POLICY_OPEN 129 
#define  IEEE80211_MACCMD_POLICY_RADIUS 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(int policy)
{
	switch (policy) {
	case IEEE80211_MACCMD_POLICY_OPEN:
		FUNC0("policy: open\n");
		break;
	case IEEE80211_MACCMD_POLICY_ALLOW:
		FUNC0("policy: allow\n");
		break;
	case IEEE80211_MACCMD_POLICY_DENY:
		FUNC0("policy: deny\n");
		break;
	case IEEE80211_MACCMD_POLICY_RADIUS:
		FUNC0("policy: radius\n");
		break;
	default:
		FUNC0("policy: unknown (%u)\n", policy);
		break;
	}
}