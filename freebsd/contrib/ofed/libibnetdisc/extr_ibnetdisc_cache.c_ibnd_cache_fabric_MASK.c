#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct stat {int dummy; } ;
struct TYPE_8__ {struct TYPE_8__* htnext; } ;
typedef  TYPE_1__ ibnd_port_t ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
typedef  TYPE_2__ ibnd_node_t ;
struct TYPE_10__ {TYPE_1__** portstbl; TYPE_2__* nodes; } ;
typedef  TYPE_3__ ibnd_fabric_t ;

/* Variables and functions */
 int HTSZ ; 
 unsigned int IBND_CACHE_FABRIC_FLAG_NO_OVERWRITE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_WRONLY ; 
 scalar_t__ FUNC1 (int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC2 (int,TYPE_3__*) ; 
 scalar_t__ FUNC3 (int,TYPE_2__*) ; 
 scalar_t__ FUNC4 (int,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC6 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*,struct stat*) ; 
 char const* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char const*) ; 

int FUNC10(ibnd_fabric_t * fabric, const char *file,
		      unsigned int flags)
{
	struct stat statbuf;
	ibnd_node_t *node = NULL;
	ibnd_node_t *node_next = NULL;
	unsigned int node_count = 0;
	ibnd_port_t *port = NULL;
	ibnd_port_t *port_next = NULL;
	unsigned int port_count = 0;
	int fd;
	int i;

	if (!fabric) {
		FUNC0("fabric parameter NULL\n");
		return -1;
	}

	if (!file) {
		FUNC0("file parameter NULL\n");
		return -1;
	}

	if (!(flags & IBND_CACHE_FABRIC_FLAG_NO_OVERWRITE)) {
		if (!FUNC7(file, &statbuf)) {
			if (FUNC9(file) < 0) {
				FUNC0("error removing '%s': %s\n",
					   file, FUNC8(errno));
				return -1;
			}
		}
	}
	else {
		if (!FUNC7(file, &statbuf)) {
			FUNC0("file '%s' already exists\n", file);
			return -1;
		}
	}

	if ((fd = FUNC6(file, O_CREAT | O_EXCL | O_WRONLY, 0644)) < 0) {
		FUNC0("open: %s\n", FUNC8(errno));
		return -1;
	}

	if (FUNC2(fd, fabric) < 0)
		goto cleanup;

	node = fabric->nodes;
	while (node) {
		node_next = node->next;

		if (FUNC3(fd, node) < 0)
			goto cleanup;

		node_count++;
		node = node_next;
	}

	for (i = 0; i < HTSZ; i++) {
		port = fabric->portstbl[i];
		while (port) {
			port_next = port->htnext;

			if (FUNC4(fd, port) < 0)
				goto cleanup;

			port_count++;
			port = port_next;
		}
	}

	if (FUNC1(fd, node_count, port_count) < 0)
		goto cleanup;

	if (FUNC5(fd) < 0) {
		FUNC0("close: %s\n", FUNC8(errno));
		goto cleanup;
	}

	return 0;

cleanup:
	FUNC9(file);
	FUNC5(fd);
	return -1;
}