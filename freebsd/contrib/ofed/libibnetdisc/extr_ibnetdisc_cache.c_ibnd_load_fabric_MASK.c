#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  node; } ;
typedef  TYPE_1__ ibnd_node_cache_t ;
typedef  int /*<<< orphan*/  ibnd_fabric_t ;
struct TYPE_16__ {int /*<<< orphan*/  from_node_guid; TYPE_3__* f_int; } ;
typedef  TYPE_2__ ibnd_fabric_cache_t ;
struct TYPE_18__ {int /*<<< orphan*/  from_node; } ;
struct TYPE_17__ {TYPE_5__ fabric; } ;
typedef  TYPE_3__ f_internal_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_1__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,TYPE_2__*,unsigned int*,unsigned int*) ; 
 scalar_t__ FUNC4 (int,TYPE_2__*) ; 
 scalar_t__ FUNC5 (int,TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 TYPE_3__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,char,int) ; 
 int FUNC14 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

ibnd_fabric_t *FUNC16(const char *file, unsigned int flags)
{
	unsigned int node_count = 0;
	unsigned int port_count = 0;
	ibnd_fabric_cache_t *fabric_cache = NULL;
	f_internal_t *f_int = NULL;
	ibnd_node_cache_t *node_cache = NULL;
	int fd = -1;
	unsigned int i;

	if (!file) {
		FUNC0("file parameter NULL\n");
		return NULL;
	}

	if ((fd = FUNC14(file, O_RDONLY)) < 0) {
		FUNC0("open: %s\n", FUNC15(errno));
		return NULL;
	}

	fabric_cache =
	    (ibnd_fabric_cache_t *) FUNC12(sizeof(ibnd_fabric_cache_t));
	if (!fabric_cache) {
		FUNC0("OOM: fabric_cache\n");
		goto cleanup;
	}
	FUNC13(fabric_cache, '\0', sizeof(ibnd_fabric_cache_t));

	f_int = FUNC8();
	if (!f_int) {
		FUNC0("OOM: fabric\n");
		goto cleanup;
	}

	fabric_cache->f_int = f_int;

	if (FUNC3(fd, fabric_cache, &node_count, &port_count) < 0)
		goto cleanup;

	for (i = 0; i < node_count; i++) {
		if (FUNC4(fd, fabric_cache) < 0)
			goto cleanup;
	}

	for (i = 0; i < port_count; i++) {
		if (FUNC5(fd, fabric_cache) < 0)
			goto cleanup;
	}

	/* Special case - find from node */
	if (!(node_cache =
	      FUNC2(fabric_cache, fabric_cache->from_node_guid))) {
		FUNC0("Cache invalid: cannot find from node\n");
		goto cleanup;
	}
	f_int->fabric.from_node = node_cache->node;

	if (FUNC6(fabric_cache) < 0)
		goto cleanup;

	if (FUNC7(fabric_cache) < 0)
		goto cleanup;

	if (FUNC10(&f_int->fabric))
		goto cleanup;

	FUNC1(fabric_cache);
	FUNC9(fd);
	return (ibnd_fabric_t *)&f_int->fabric;

cleanup:
	FUNC11((ibnd_fabric_t *)f_int);
	FUNC1(fabric_cache);
	FUNC9(fd);
	return NULL;
}