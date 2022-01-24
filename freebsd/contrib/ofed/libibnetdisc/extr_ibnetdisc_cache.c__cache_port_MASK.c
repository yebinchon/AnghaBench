#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_7__ {int lmc; TYPE_2__* remoteport; TYPE_1__* node; int /*<<< orphan*/  info; int /*<<< orphan*/  base_lid; scalar_t__ ext_portnum; scalar_t__ portnum; int /*<<< orphan*/  guid; } ;
typedef  TYPE_3__ ibnd_port_t ;
struct TYPE_6__ {scalar_t__ portnum; int /*<<< orphan*/  guid; } ;
struct TYPE_5__ {int /*<<< orphan*/  guid; } ;

/* Variables and functions */
 int IBND_FABRIC_CACHE_BUFLEN ; 
 int /*<<< orphan*/  IB_SMP_DATA_SIZE ; 
 scalar_t__ FUNC0 (int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int*,int) ; 
 scalar_t__ FUNC3 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int*,size_t) ; 

__attribute__((used)) static int FUNC5(int fd, ibnd_port_t * port)
{
	uint8_t buf[IBND_FABRIC_CACHE_BUFLEN];
	size_t offset = 0;

	offset += FUNC1(buf + offset, port->guid);
	offset += FUNC2(buf + offset, (uint8_t) port->portnum);
	offset += FUNC2(buf + offset, (uint8_t) port->ext_portnum);
	offset += FUNC0(buf + offset, port->base_lid);
	offset += FUNC2(buf + offset, port->lmc);
	offset += FUNC3(buf + offset, port->info, IB_SMP_DATA_SIZE);
	offset += FUNC1(buf + offset, port->node->guid);
	if (port->remoteport) {
		offset += FUNC2(buf + offset, 1);
		offset += FUNC1(buf + offset, port->remoteport->guid);
		offset += FUNC2(buf + offset, (uint8_t) port->remoteport->portnum);
	} else {
		offset += FUNC2(buf + offset, 0);
		offset += FUNC1(buf + offset, 0);
		offset += FUNC2(buf + offset, 0);
	}

	if (FUNC4(fd, buf, offset) < 0)
		return -1;

	return 0;
}