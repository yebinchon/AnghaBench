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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  pc ;
typedef  int /*<<< orphan*/  ib_portid_t ;
struct TYPE_2__ {int /*<<< orphan*/  pma_query_failures; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ibd_timeout ; 
 int /*<<< orphan*/  ibmad_port ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,void*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,size_t,char*,char*,int) ; 
 TYPE_1__ summary ; 

__attribute__((used)) static int FUNC7(char *buf, size_t size, ib_portid_t * portid,
			  char *node_name, int portnum,
			  const char *attr_name, uint16_t attr_id,
			  int start_field, int end_field)
{
	uint8_t pc[1024];
	uint32_t val = 0;
	int i, n;

	FUNC3(pc, 0, sizeof(pc));

	if (!FUNC4(pc, portid, portnum, ibd_timeout, attr_id,
			   ibmad_port)) {
		FUNC0("%s query failed on %s, %s port %d", attr_name,
		       node_name, FUNC5(portid), portnum);
		summary.pma_query_failures++;
		return 0;
	}

	for (n = 0, i = start_field; i < end_field; i++) {
		FUNC1(pc, i, (void *)&val);
		if (val)
			n += FUNC6(buf + n, size - n, " [%s == %u]",
				      FUNC2(i), val);
	}

	return n;
}