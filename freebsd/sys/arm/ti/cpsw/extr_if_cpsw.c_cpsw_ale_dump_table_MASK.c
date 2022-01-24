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
typedef  int uint32_t ;
struct cpsw_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int FUNC1 (int*) ; 
 int const FUNC2 (int*) ; 
#define  ALE_TYPE_ADDR 130 
#define  ALE_TYPE_VLAN 129 
#define  ALE_TYPE_VLAN_ADDR 128 
 int FUNC3 (int*) ; 
 int FUNC4 (int*) ; 
 int FUNC5 (int*) ; 
 int FUNC6 (int*) ; 
 int FUNC7 (int*) ; 
 int CPSW_MAX_ALE_ENTRIES ; 
 int /*<<< orphan*/  FUNC8 (struct cpsw_softc*,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static void
FUNC10(struct cpsw_softc *sc) {
	int i;
	uint32_t ale_entry[3];
	for (i = 0; i < CPSW_MAX_ALE_ENTRIES; i++) {
		FUNC8(sc, i, ale_entry);
		switch (FUNC2(ale_entry)) {
		case ALE_TYPE_VLAN:
			FUNC9("ALE[%4u] %08x %08x %08x ", i, ale_entry[2],
				ale_entry[1], ale_entry[0]);
			FUNC9("type: %u ", FUNC2(ale_entry));
			FUNC9("vlan: %u ", FUNC3(ale_entry));
			FUNC9("untag: %u ", FUNC7(ale_entry));
			FUNC9("reg flood: %u ", FUNC5(ale_entry));
			FUNC9("unreg flood: %u ", FUNC6(ale_entry));
			FUNC9("members: %u ", FUNC4(ale_entry));
			FUNC9("\n");
			break;
		case ALE_TYPE_ADDR:
		case ALE_TYPE_VLAN_ADDR:
			FUNC9("ALE[%4u] %08x %08x %08x ", i, ale_entry[2],
				ale_entry[1], ale_entry[0]);
			FUNC9("type: %u ", FUNC2(ale_entry));
			FUNC9("mac: %02x:%02x:%02x:%02x:%02x:%02x ",
				(ale_entry[1] >> 8) & 0xFF,
				(ale_entry[1] >> 0) & 0xFF,
				(ale_entry[0] >>24) & 0xFF,
				(ale_entry[0] >>16) & 0xFF,
				(ale_entry[0] >> 8) & 0xFF,
				(ale_entry[0] >> 0) & 0xFF);
			FUNC9(FUNC0(ale_entry) ? "mcast " : "ucast ");
			if (FUNC2(ale_entry) == ALE_TYPE_VLAN_ADDR)
				FUNC9("vlan: %u ", FUNC3(ale_entry));
			FUNC9("port: %u ", FUNC1(ale_entry));
			FUNC9("\n");
			break;
		}
	}
	FUNC9("\n");
}