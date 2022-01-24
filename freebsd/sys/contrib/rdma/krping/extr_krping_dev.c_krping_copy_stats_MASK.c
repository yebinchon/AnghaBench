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
struct stats_list_entry {struct krping_stats* stats; } ;
struct stats_list {int dummy; } ;
struct krping_stats {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct stats_list*,struct stats_list_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct stats_list_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 void* FUNC2 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct krping_stats *stats, void *arg)
{
	struct stats_list_entry *s;
	struct stats_list *list = arg;

	s = FUNC2(sizeof(*s), M_DEVBUF, M_NOWAIT | M_ZERO);
	if (s == NULL)
		return;
	if (stats != NULL) {
		s->stats = FUNC2(sizeof(*stats), M_DEVBUF, M_NOWAIT | M_ZERO);
		if (s->stats == NULL) {
			FUNC1(s, M_DEVBUF);
			return;
		}
		*s->stats = *stats;
	}
	FUNC0(list, s, link);
}