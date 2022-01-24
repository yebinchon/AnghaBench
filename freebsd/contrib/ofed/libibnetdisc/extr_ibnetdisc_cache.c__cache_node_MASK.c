#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_5__ {int numports; TYPE_1__** ports; int /*<<< orphan*/  nodedesc; int /*<<< orphan*/  info; scalar_t__ type; int /*<<< orphan*/  guid; int /*<<< orphan*/  switchinfo; scalar_t__ smaenhsp0; scalar_t__ smalmc; int /*<<< orphan*/  smalid; } ;
typedef  TYPE_2__ ibnd_node_t ;
struct TYPE_4__ {scalar_t__ portnum; int /*<<< orphan*/  guid; } ;

/* Variables and functions */
 int IBND_FABRIC_CACHE_BUFLEN ; 
 int /*<<< orphan*/  IB_SMP_DATA_SIZE ; 
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,scalar_t__*,size_t) ; 

__attribute__((used)) static int FUNC5(int fd, ibnd_node_t * node)
{
	uint8_t buf[IBND_FABRIC_CACHE_BUFLEN];
	size_t offset = 0;
	size_t ports_stored_offset = 0;
	uint8_t ports_stored_count = 0;
	int i;

	offset += FUNC0(buf + offset, node->smalid);
	offset += FUNC2(buf + offset, node->smalmc);
	offset += FUNC2(buf + offset, (uint8_t) node->smaenhsp0);
	offset += FUNC3(buf + offset, node->switchinfo,
				IB_SMP_DATA_SIZE);
	offset += FUNC1(buf + offset, node->guid);
	offset += FUNC2(buf + offset, (uint8_t) node->type);
	offset += FUNC2(buf + offset, (uint8_t) node->numports);
	offset += FUNC3(buf + offset, node->info, IB_SMP_DATA_SIZE);
	offset += FUNC3(buf + offset, node->nodedesc, IB_SMP_DATA_SIZE);
	/* need to come back later and store number of stored ports
	 * because port entries can be NULL or (in the case of switches)
	 * there is an additional port 0 not accounted for in numports.
	 */
	ports_stored_offset = offset;
	offset += sizeof(uint8_t);

	for (i = 0; i <= node->numports; i++) {
		if (node->ports[i]) {
			offset += FUNC1(buf + offset,
					      node->ports[i]->guid);
			offset += FUNC2(buf + offset,
					     (uint8_t) node->ports[i]->portnum);
			ports_stored_count++;
		}
	}

	/* go back and store number of port keys stored */
	FUNC2(buf + ports_stored_offset, ports_stored_count);

	if (FUNC4(fd, buf, offset) < 0)
		return -1;

	return 0;
}