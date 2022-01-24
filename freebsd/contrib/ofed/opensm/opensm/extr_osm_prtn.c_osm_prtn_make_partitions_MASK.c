#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct stat {int dummy; } ;
struct TYPE_9__ {char* partition_config_file; } ;
struct TYPE_10__ {int /*<<< orphan*/  prtn_pkey_tbl; TYPE_1__ opt; } ;
typedef  TYPE_2__ osm_subn_t ;
struct TYPE_11__ {int /*<<< orphan*/  full_guid_tbl; int /*<<< orphan*/  part_guid_tbl; int /*<<< orphan*/  map_item; } ;
typedef  TYPE_3__ osm_prtn_t ;
typedef  int /*<<< orphan*/  osm_log_t ;
typedef  scalar_t__ ib_api_status_t ;
typedef  int /*<<< orphan*/  cl_map_item_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ IB_SUCCESS ; 
 char* OSM_DEFAULT_PARTITION_CONFIG_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 int /*<<< orphan*/  OSM_LOG_VERBOSE ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ global_pkey_counter ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_3__**) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 scalar_t__ FUNC10 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

ib_api_status_t FUNC12(osm_log_t * p_log, osm_subn_t * p_subn)
{
	struct stat statbuf;
	const char *file_name;
	boolean_t is_config = TRUE;
	boolean_t is_wrong_config = FALSE;
	ib_api_status_t status = IB_SUCCESS;
	cl_map_item_t *p_next;
	osm_prtn_t *p;

	file_name = p_subn->opt.partition_config_file ?
	    p_subn->opt.partition_config_file : OSM_DEFAULT_PARTITION_CONFIG_FILE;
	if (FUNC10(file_name, &statbuf)) {
		FUNC0(p_log, OSM_LOG_VERBOSE, "Partition configuration "
			"%s is not accessible (%s)\n", file_name,
			FUNC11(errno));
		is_config = FALSE;
	}

retry_default:
	/* clean up current port maps */
	p_next = FUNC4(&p_subn->prtn_pkey_tbl);
	while (p_next != FUNC3(&p_subn->prtn_pkey_tbl)) {
		p = (osm_prtn_t *) p_next;
		p_next = FUNC5(&p->map_item);
		FUNC2(&p->part_guid_tbl);
		FUNC2(&p->full_guid_tbl);
	}

	global_pkey_counter = 0;

	status = FUNC9(p_log, p_subn, !is_config);
	if (status != IB_SUCCESS)
		goto _err;

	if (is_config && FUNC7(p_log, p_subn, file_name)) {
		FUNC0(p_log, OSM_LOG_VERBOSE, "Partition configuration "
			"was not fully processed\n");
		is_wrong_config = TRUE;
	}

	/* and now clean up empty partitions */
	p_next = FUNC4(&p_subn->prtn_pkey_tbl);
	while (p_next != FUNC3(&p_subn->prtn_pkey_tbl)) {
		p = (osm_prtn_t *) p_next;
		p_next = FUNC5(&p->map_item);
		if (FUNC1(&p->part_guid_tbl) == 0 &&
		    FUNC1(&p->full_guid_tbl) == 0) {
			FUNC6(&p_subn->prtn_pkey_tbl,
					    (cl_map_item_t *) p);
			FUNC8(p_subn, &p);
		}
	}

	if (is_config && is_wrong_config) {
		FUNC0(p_log, OSM_LOG_ERROR, "Partition configuration "
			"in error; retrying with default config\n");
		is_config = FALSE;
		goto retry_default;
	}

_err:
	return status;
}