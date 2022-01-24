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
typedef  int /*<<< orphan*/  u_int ;
typedef  int u_char ;
struct medsa_pkthdr {int dummy; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct medsa_pkthdr const*) ; 
 int FUNC1 (struct medsa_pkthdr const*) ; 
 int /*<<< orphan*/  FUNC2 (int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct medsa_pkthdr const*) ; 
 int /*<<< orphan*/  FUNC5 (struct medsa_pkthdr const*) ; 
 int /*<<< orphan*/  FUNC6 (struct medsa_pkthdr const*) ; 
 int /*<<< orphan*/  FUNC7 (struct medsa_pkthdr const*) ; 
 int FUNC8 (struct medsa_pkthdr const*) ; 
#define  TAG_FORWARD 130 
#define  TAG_FROM_CPU 129 
#define  TAG_TO_CPU 128 
 int /*<<< orphan*/  FUNC9 (struct medsa_pkthdr const*) ; 
 int /*<<< orphan*/  FUNC10 (struct medsa_pkthdr const*) ; 
 int /*<<< orphan*/  code_values ; 
 int /*<<< orphan*/  tag_values ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC12(netdissect_options *ndo,
		 const struct medsa_pkthdr *medsa,
		 u_int caplen)
{
	u_char tag = FUNC8(medsa);

	FUNC3((ndo, "%s",
		  FUNC11(tag_values, "Unknown (%u)", tag)));

	switch (tag) {
	case TAG_TO_CPU:
		FUNC3((ndo, ", %stagged", FUNC7(medsa) ? "" : "un"));
		FUNC3((ndo, ", dev.port:vlan %d.%d:%d",
			  FUNC5(medsa), FUNC6(medsa), FUNC10(medsa)));

		FUNC3((ndo, ", %s",
			  FUNC11(code_values, "Unknown (%u)", FUNC1(medsa))));
		if (FUNC0(medsa))
			FUNC3((ndo, ", CFI"));

		FUNC3((ndo, ", pri %d: ", FUNC4(medsa)));
		break;
	case TAG_FROM_CPU:
		FUNC3((ndo, ", %stagged", FUNC7(medsa) ? "" : "un"));
		FUNC3((ndo, ", dev.port:vlan %d.%d:%d",
			  FUNC5(medsa), FUNC6(medsa), FUNC10(medsa)));

		if (FUNC0(medsa))
			FUNC3((ndo, ", CFI"));

		FUNC3((ndo, ", pri %d: ", FUNC4(medsa)));
		break;
	case TAG_FORWARD:
		FUNC3((ndo, ", %stagged", FUNC7(medsa) ? "" : "un"));
		if (FUNC9(medsa))
			FUNC3((ndo, ", dev.trunk:vlan %d.%d:%d",
				  FUNC5(medsa), FUNC6(medsa), FUNC10(medsa)));
		else
			FUNC3((ndo, ", dev.port:vlan %d.%d:%d",
				  FUNC5(medsa), FUNC6(medsa), FUNC10(medsa)));

		if (FUNC0(medsa))
			FUNC3((ndo, ", CFI"));

		FUNC3((ndo, ", pri %d: ", FUNC4(medsa)));
		break;
	default:
		FUNC2((const u_char *)medsa, caplen);
		return;
	}
}