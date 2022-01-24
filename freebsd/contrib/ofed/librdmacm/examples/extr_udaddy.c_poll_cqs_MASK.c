#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ibv_wc {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ah; int /*<<< orphan*/  cq; int /*<<< orphan*/  connected; } ;
struct TYPE_3__ {TYPE_2__* nodes; } ;

/* Variables and functions */
 int connections ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,struct ibv_wc*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,struct ibv_wc*) ; 
 int message_count ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 TYPE_1__ test ; 

__attribute__((used)) static int FUNC3(void)
{
	struct ibv_wc wc[8];
	int done, i, ret;

	for (i = 0; i < connections; i++) {
		if (!test.nodes[i].connected)
			continue;

		for (done = 0; done < message_count; done += ret) {
			ret = FUNC1(test.nodes[i].cq, 8, wc);
			if (ret < 0) {
				FUNC2("udaddy: failed polling CQ: %d\n", ret);
				return ret;
			}

			if (ret && !test.nodes[i].ah)
				FUNC0(&test.nodes[i], wc);
		}
	}
	return 0;
}