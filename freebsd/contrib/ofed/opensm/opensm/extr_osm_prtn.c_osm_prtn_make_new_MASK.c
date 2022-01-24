#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_11__ {int /*<<< orphan*/  prtn_pkey_tbl; } ;
typedef  TYPE_1__ osm_subn_t ;
struct TYPE_12__ {int /*<<< orphan*/  name; int /*<<< orphan*/  map_item; int /*<<< orphan*/  pkey; } ;
typedef  TYPE_2__ osm_prtn_t ;
typedef  int /*<<< orphan*/  osm_log_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 int /*<<< orphan*/  OSM_LOG_VERBOSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__**) ; 
 TYPE_2__* FUNC6 (TYPE_1__*,char const*) ; 
 TYPE_2__* FUNC7 (char const*,int /*<<< orphan*/ ) ; 

osm_prtn_t *FUNC8(osm_log_t * p_log, osm_subn_t * p_subn,
			      const char *name, uint16_t pkey)
{
	osm_prtn_t *p = NULL, *p_check;

	pkey &= FUNC1((uint16_t) ~ 0x8000);
	if (!pkey) {
		if (name && (p = FUNC6(p_subn, name)))
			return p;
		if (!(pkey = FUNC4(p_subn)))
			return NULL;
	}

	p = FUNC7(name, pkey);
	if (!p) {
		FUNC0(p_log, OSM_LOG_ERROR, "Unable to create"
			" partition \'%s\' (0x%04x)\n", name, FUNC2(pkey));
		return NULL;
	}

	p_check = (osm_prtn_t *) FUNC3(&p_subn->prtn_pkey_tbl,
						p->pkey, &p->map_item);
	if (p != p_check) {
		FUNC0(p_log, OSM_LOG_VERBOSE, "Duplicated partition"
			" definition: \'%s\' (0x%04x) prev name \'%s\'"
			".  Will use it\n",
			name, FUNC2(pkey), p_check->name);
		FUNC5(p_subn, &p);
		p = p_check;
	}

	return p;
}