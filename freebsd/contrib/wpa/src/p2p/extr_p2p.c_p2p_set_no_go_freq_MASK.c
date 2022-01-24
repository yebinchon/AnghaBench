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
struct wpa_freq_range_list {int num; int /*<<< orphan*/  range; } ;
struct wpa_freq_range {int dummy; } ;
struct TYPE_2__ {int num; struct wpa_freq_range* range; } ;
struct p2p_data {TYPE_1__ no_go_freq; } ;

/* Variables and functions */
 struct wpa_freq_range* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_freq_range*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_freq_range*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct p2p_data*,char*) ; 

int FUNC4(struct p2p_data *p2p,
		       const struct wpa_freq_range_list *list)
{
	struct wpa_freq_range *tmp;

	if (list == NULL || list->num == 0) {
		FUNC1(p2p->no_go_freq.range);
		p2p->no_go_freq.range = NULL;
		p2p->no_go_freq.num = 0;
		return 0;
	}

	tmp = FUNC0(list->num, sizeof(struct wpa_freq_range));
	if (tmp == NULL)
		return -1;
	FUNC2(tmp, list->range, list->num * sizeof(struct wpa_freq_range));
	FUNC1(p2p->no_go_freq.range);
	p2p->no_go_freq.range = tmp;
	p2p->no_go_freq.num = list->num;
	FUNC3(p2p, "Updated no GO chan list");

	return 0;
}