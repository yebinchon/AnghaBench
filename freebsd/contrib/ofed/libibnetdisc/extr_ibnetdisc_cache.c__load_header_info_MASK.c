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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_7__ {TYPE_2__* f_int; int /*<<< orphan*/  from_node_guid; } ;
typedef  TYPE_3__ ibnd_fabric_cache_t ;
struct TYPE_5__ {scalar_t__ maxhops_discovered; } ;
struct TYPE_6__ {TYPE_1__ fabric; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int IBND_FABRIC_CACHE_BUFLEN ; 
 int /*<<< orphan*/  IBND_FABRIC_CACHE_HEADER_LEN ; 
 scalar_t__ IBND_FABRIC_CACHE_MAGIC ; 
 scalar_t__ IBND_FABRIC_CACHE_VERSION ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(int fd, ibnd_fabric_cache_t * fabric_cache,
			     unsigned int *node_count, unsigned int *port_count)
{
	uint8_t buf[IBND_FABRIC_CACHE_BUFLEN];
	uint32_t magic = 0;
	uint32_t version = 0;
	size_t offset = 0;
	uint32_t tmp32;

	if (FUNC3(fd, buf, IBND_FABRIC_CACHE_HEADER_LEN) < 0)
		return -1;

	offset += FUNC1(buf + offset, &magic);

	if (magic != IBND_FABRIC_CACHE_MAGIC) {
		FUNC0("invalid fabric cache file\n");
		return -1;
	}

	offset += FUNC1(buf + offset, &version);

	if (version != IBND_FABRIC_CACHE_VERSION) {
		FUNC0("invalid fabric cache version\n");
		return -1;
	}

	offset += FUNC1(buf + offset, node_count);
	offset += FUNC1(buf + offset, port_count);

	offset += FUNC2(buf + offset, &fabric_cache->from_node_guid);
	offset += FUNC1(buf + offset, &tmp32);
	fabric_cache->f_int->fabric.maxhops_discovered = tmp32;

	return 0;
}