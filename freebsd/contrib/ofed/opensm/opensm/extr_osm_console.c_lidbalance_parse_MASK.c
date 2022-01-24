#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_8__ {int /*<<< orphan*/  map_item; } ;
typedef  TYPE_1__ osm_switch_t ;
struct TYPE_10__ {int /*<<< orphan*/  sw_guid_tbl; } ;
struct TYPE_9__ {int /*<<< orphan*/  lock; TYPE_4__ subn; } ;
typedef  TYPE_2__ osm_opensm_t ;
typedef  int /*<<< orphan*/  cl_qmap_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 char* FUNC9 (char**) ; 
 TYPE_1__* FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(char **p_last, osm_opensm_t * p_osm, FILE * out)
{
	char *p_cmd;
	uint64_t guid = 0;
	osm_switch_t *p_sw;

	p_cmd = FUNC9(p_last);
	if (p_cmd) {
		char *p_end;

		guid = FUNC11(p_cmd, &p_end, 0);
		if (!guid || *p_end != '\0') {
			FUNC6(out, "Invalid switchguid specified\n");
			FUNC7(out, 1);
			return;
		}
	}

	FUNC1(&p_osm->lock);
	if (guid) {
		p_sw = FUNC10(&p_osm->subn, FUNC0(guid));
		if (!p_sw) {
			FUNC6(out, "switchguid not found\n");
			goto lock_exit;
		}
		FUNC8(p_osm, p_sw, out);
	} else {
		cl_qmap_t *p_sw_guid_tbl = &p_osm->subn.sw_guid_tbl;
		for (p_sw = (osm_switch_t *) FUNC4(p_sw_guid_tbl);
		     p_sw != (osm_switch_t *) FUNC3(p_sw_guid_tbl);
		     p_sw = (osm_switch_t *) FUNC5(&p_sw->map_item))
			FUNC8(p_osm, p_sw, out);
	}

lock_exit:
	FUNC2(&p_osm->lock);
	return;
}