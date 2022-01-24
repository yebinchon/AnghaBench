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
struct uio {int dummy; } ;
struct stats_list_entry {int /*<<< orphan*/  read_msgs; int /*<<< orphan*/  read_bytes; int /*<<< orphan*/  write_msgs; int /*<<< orphan*/  write_bytes; int /*<<< orphan*/  recv_msgs; int /*<<< orphan*/  recv_bytes; int /*<<< orphan*/  send_msgs; int /*<<< orphan*/  send_bytes; int /*<<< orphan*/  name; struct stats_list_entry* stats; } ;
struct stats_list {int dummy; } ;
struct krping_stats {int /*<<< orphan*/  read_msgs; int /*<<< orphan*/  read_bytes; int /*<<< orphan*/  write_msgs; int /*<<< orphan*/  write_bytes; int /*<<< orphan*/  recv_msgs; int /*<<< orphan*/  recv_bytes; int /*<<< orphan*/  send_msgs; int /*<<< orphan*/  send_bytes; int /*<<< orphan*/  name; struct krping_stats* stats; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 scalar_t__ FUNC0 (struct stats_list*) ; 
 struct stats_list_entry* FUNC1 (struct stats_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct stats_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct stats_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct stats_list_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  krping_copy_stats ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct stats_list*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static int
FUNC7(struct cdev *dev, struct uio *uio, int ioflag)
{
	int num = 1;
	struct stats_list list;
	struct stats_list_entry *e;

	FUNC2(&list);
	FUNC5(krping_copy_stats, &list);

	if (FUNC0(&list))
		return (0);

	FUNC6("krping: %4s %10s %10s %10s %10s %10s %10s %10s %10s %10s\n",
	    "num", "device", "snd bytes", "snd msgs", "rcv bytes", "rcv msgs",
	    "wr bytes", "wr msgs", "rd bytes", "rd msgs");

	while (!FUNC0(&list)) {
		e = FUNC1(&list);
		FUNC3(&list, link);
		if (e->stats == NULL)
			FUNC6("krping: %d listen\n", num);
		else {
			struct krping_stats *stats = e->stats;

			FUNC6("krping: %4d %10s %10llu %10llu %10llu %10llu "
			    "%10llu %10llu %10llu %10llu\n", num, stats->name,
			    stats->send_bytes, stats->send_msgs,
			    stats->recv_bytes, stats->recv_msgs,
			    stats->write_bytes, stats->write_msgs,
			    stats->read_bytes, stats->read_msgs);
			FUNC4(stats, M_DEVBUF);
		}
		num++;
		FUNC4(e, M_DEVBUF);
	}

	return (0);
}