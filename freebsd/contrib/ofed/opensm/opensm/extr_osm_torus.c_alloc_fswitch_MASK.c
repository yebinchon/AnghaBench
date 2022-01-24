#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fabric {size_t switch_cnt; size_t switch_cnt_max; struct f_switch** sw; TYPE_1__* osm; } ;
struct f_switch {unsigned int port_cnt; int /*<<< orphan*/  n_id; void* port; } ;
typedef  int /*<<< orphan*/  guid_t ;
struct TYPE_2__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 struct f_switch* FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (struct f_switch**,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (struct f_switch**,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
struct f_switch *FUNC5(struct fabric *f,
			       guid_t sw_id, unsigned port_cnt)
{
	size_t new_sw_sz;
	unsigned cnt_max;
	struct f_switch *sw = NULL;
	void *ptr;

	if (f->switch_cnt >= f->switch_cnt_max) {

		cnt_max = 16 + 5 * f->switch_cnt_max / 4;
		ptr = FUNC3(f->sw, cnt_max * sizeof(*f->sw));
		if (!ptr) {
			FUNC0(&f->osm->log, OSM_LOG_ERROR,
				"ERR 4E02: realloc: %s\n", FUNC4(errno));
			goto out;
		}
		f->sw = ptr;
		f->switch_cnt_max = cnt_max;
		FUNC2(&f->sw[f->switch_cnt], 0,
		       (f->switch_cnt_max - f->switch_cnt)*sizeof(*f->sw));
	}
	new_sw_sz = sizeof(*sw) + port_cnt * sizeof(*sw->port);
	sw = FUNC1(1, new_sw_sz);
	if (!sw) {
		FUNC0(&f->osm->log, OSM_LOG_ERROR,
			"ERR 4E03: calloc: %s\n", FUNC4(errno));
		goto out;
	}
	sw->port = (void *)(sw + 1);
	sw->n_id = sw_id;
	sw->port_cnt = port_cnt;
	f->sw[f->switch_cnt++] = sw;
out:
	return sw;
}