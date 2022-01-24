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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  nn_map_t ;

/* Variables and functions */
 scalar_t__ EIO ; 
 char* HAVE_DEFAULT_NODENAME_MAP ; 
 int PARSE_NODE_MAP_BUFLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  map_name ; 
 int /*<<< orphan*/  FUNC4 (char*,char,int) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC6 (char const*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (scalar_t__) ; 

nn_map_t *FUNC8(const char *node_name_map)
{
	nn_map_t *map;
	char linebuf[PARSE_NODE_MAP_BUFLEN + 1];

	if (!node_name_map) {
#ifdef HAVE_DEFAULT_NODENAME_MAP
		struct stat buf;
		node_name_map = HAVE_DEFAULT_NODENAME_MAP;
		if (stat(node_name_map, &buf))
			return NULL;
#else
		return NULL;
#endif				/* HAVE_DEFAULT_NODENAME_MAP */
	}

	map = FUNC3(sizeof(*map));
	if (!map)
		return NULL;
	FUNC0(map);

	FUNC4(linebuf, '\0', PARSE_NODE_MAP_BUFLEN + 1);
	if (FUNC5(node_name_map, map_name, map,
				linebuf, PARSE_NODE_MAP_BUFLEN)) {
		if (errno == EIO) {
			FUNC2(stderr,
				"WARNING failed to parse node name map "
				"\"%s\"\n",
				node_name_map);
			FUNC2(stderr,
				"WARNING failed line: \"%s\"\n",
				linebuf);
		}
		else
			FUNC2(stderr,
				"WARNING failed to open node name map "
				"\"%s\" (%s)\n",
				node_name_map, FUNC7(errno));
		FUNC1(map);
		return NULL;
	}

	return map;
}