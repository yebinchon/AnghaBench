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
struct link {int dummy; } ;
struct fabric {size_t link_cnt; size_t link_cnt_max; struct link** link; TYPE_1__* osm; } ;
struct TYPE_2__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 struct link* FUNC1 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (struct link**,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (struct link**,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
struct link *FUNC5(struct fabric *f)
{
	unsigned cnt_max;
	struct link *l = NULL;
	void *ptr;

	if (f->link_cnt >= f->link_cnt_max) {

		cnt_max = 16 + 5 * f->link_cnt_max / 4;
		ptr = FUNC3(f->link, cnt_max * sizeof(*f->link));
		if (!ptr) {
			FUNC0(&f->osm->log, OSM_LOG_ERROR,
				"ERR 4E04: realloc: %s\n", FUNC4(errno));
			goto out;
		}
		f->link = ptr;
		f->link_cnt_max = cnt_max;
		FUNC2(&f->link[f->link_cnt], 0,
		       (f->link_cnt_max - f->link_cnt) * sizeof(*f->link));
	}
	l = FUNC1(1, sizeof(*l));
	if (!l) {
		FUNC0(&f->osm->log, OSM_LOG_ERROR,
			"ERR 4E05: calloc: %s\n", FUNC4(errno));
		goto out;
	}
	f->link[f->link_cnt++] = l;
out:
	return l;
}