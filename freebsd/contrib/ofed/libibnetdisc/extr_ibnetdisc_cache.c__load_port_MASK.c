#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
struct TYPE_7__ {void* portnum; int /*<<< orphan*/  guid; } ;
struct TYPE_8__ {void* lmc; void* remoteport_flag; TYPE_1__ remoteport_cache_key; int /*<<< orphan*/  node_guid; int /*<<< orphan*/  info; int /*<<< orphan*/  base_lid; void* ext_portnum; void* portnum; int /*<<< orphan*/  guid; struct TYPE_8__* port; } ;
typedef  TYPE_2__ ibnd_port_t ;
typedef  TYPE_2__ ibnd_port_cache_t ;
typedef  int /*<<< orphan*/  ibnd_fabric_cache_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int IBND_FABRIC_CACHE_BUFLEN ; 
 int /*<<< orphan*/  IBND_PORT_CACHE_LEN ; 
 int /*<<< orphan*/  IB_SMP_DATA_SIZE ; 
 scalar_t__ FUNC1 (void**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (void**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (void**,void**) ; 
 scalar_t__ FUNC4 (void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int,void**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(int fd, ibnd_fabric_cache_t * fabric_cache)
{
	uint8_t buf[IBND_FABRIC_CACHE_BUFLEN];
	ibnd_port_cache_t *port_cache = NULL;
	ibnd_port_t *port = NULL;
	size_t offset = 0;
	uint8_t tmp8;

	port_cache = (ibnd_port_cache_t *) FUNC7(sizeof(ibnd_port_cache_t));
	if (!port_cache) {
		FUNC0("OOM: port_cache\n");
		return -1;
	}
	FUNC8(port_cache, '\0', sizeof(ibnd_port_cache_t));

	port = (ibnd_port_t *) FUNC7(sizeof(ibnd_port_t));
	if (!port) {
		FUNC0("OOM: port\n");
		FUNC5(port_cache);
		return -1;
	}
	FUNC8(port, '\0', sizeof(ibnd_port_t));

	port_cache->port = port;

	if (FUNC6(fd, buf, IBND_PORT_CACHE_LEN) < 0)
		goto cleanup;

	offset += FUNC2(buf + offset, &port->guid);
	offset += FUNC3(buf + offset, &tmp8);
	port->portnum = tmp8;
	offset += FUNC3(buf + offset, &tmp8);
	port->ext_portnum = tmp8;
	offset += FUNC1(buf + offset, &port->base_lid);
	offset += FUNC3(buf + offset, &port->lmc);
	offset += FUNC4(buf + offset, port->info, IB_SMP_DATA_SIZE);
	offset += FUNC2(buf + offset, &port_cache->node_guid);
	offset += FUNC3(buf + offset, &port_cache->remoteport_flag);
	offset +=
	    FUNC2(buf + offset, &port_cache->remoteport_cache_key.guid);
	offset +=
	    FUNC3(buf + offset,
			 &port_cache->remoteport_cache_key.portnum);

	FUNC9(port_cache, fabric_cache);

	return 0;

cleanup:
	FUNC5(port);
	FUNC5(port_cache);
	return -1;
}