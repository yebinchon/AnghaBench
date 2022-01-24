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
 scalar_t__ FUNC0 (int*) ; 
 int ALE_TYPE_VLAN ; 
 int FUNC1 (int*) ; 
 int CPSW_MAX_ALE_ENTRIES ; 
 int /*<<< orphan*/  FUNC2 (struct cpsw_softc*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpsw_softc*,int,int*) ; 

__attribute__((used)) static int
FUNC4(struct cpsw_softc *sc, int vlan, int ports,
	int untag, int mcregflood, int mcunregflood)
{
	int free_index, i, matching_index;
	uint32_t ale_entry[3];

	free_index = matching_index = -1;
	/* Find a matching entry or a free entry. */
	for (i = 5; i < CPSW_MAX_ALE_ENTRIES; i++) {
		FUNC2(sc, i, ale_entry);

		/* Entry Type[61:60] is 0 for free entry */ 
		if (free_index < 0 && FUNC0(ale_entry) == 0)
			free_index = i;

		if (FUNC1(ale_entry) == vlan) {
			matching_index = i;
			break;
		}
	}

	if (matching_index < 0) {
		if (free_index < 0)
			return (-1);
		i = free_index;
	}

	ale_entry[0] = (untag & 7) << 24 | (mcregflood & 7) << 16 |
	    (mcunregflood & 7) << 8 | (ports & 7);
	ale_entry[1] = ALE_TYPE_VLAN << 28 | vlan << 16;
	ale_entry[2] = 0;
	FUNC3(sc, i, ale_entry);

	return (0);
}