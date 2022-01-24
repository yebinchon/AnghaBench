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
typedef  int uint64_t ;
struct guid_trid {int guid; int* gid; scalar_t__ trid; } ;
typedef  int /*<<< orphan*/  line ;
typedef  int* ibmad_gid_t ;
typedef  int /*<<< orphan*/  ib_portid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAX_CLIENTS ; 
 struct guid_trid* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct guid_trid*) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int /*<<< orphan*/ *,struct guid_trid*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int /*<<< orphan*/ *,struct guid_trid*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int /*<<< orphan*/ *,struct guid_trid*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(char *guid_file, int port, int agent,
			       ib_portid_t * dport, int timeout)
{
	char line[256];
	FILE *f;
	ibmad_gid_t port_gid;
	uint64_t prefix = FUNC6(0xfe80000000000000ull);
	uint64_t guid = FUNC6(0x0002c90200223825ull);
	struct guid_trid *list;
	int i = 0;

	list = FUNC0(MAX_CLIENTS, sizeof(*list));
	if (!list) {
		FUNC1("cannot alloc mem for guid/trid list: %s\n",
		    FUNC11(errno));
		return -1;
	}

	f = FUNC4(guid_file, "r");
	if (!f) {
		FUNC1("cannot open %s: %s\n", guid_file, FUNC11(errno));
		return -1;
	}

	while (FUNC3(line, sizeof(line), f)) {
		guid = FUNC12(line, NULL, 0);
		guid = FUNC6(guid);
		FUNC7(&port_gid[0], &prefix, 8);
		FUNC7(&port_gid[8], &guid, 8);

		list[i].guid = guid;
		FUNC7(list[i].gid, port_gid, sizeof(list[i].gid));
		list[i].trid = 0;
		if (++i >= MAX_CLIENTS)
			break;
	}
	FUNC2(f);

	FUNC10(port, agent, dport, list, i);
	FUNC9(port, agent, dport, list, i);

	FUNC8(port, agent, dport, list, i);

	FUNC5(list);
	return 0;
}