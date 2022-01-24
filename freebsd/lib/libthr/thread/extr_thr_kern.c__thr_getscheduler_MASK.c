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
struct sched_param {int dummy; } ;
struct rtprio {int dummy; } ;
typedef  int /*<<< orphan*/  lwpid_t ;

/* Variables and functions */
 int /*<<< orphan*/  RTP_LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (struct rtprio*,int*,struct sched_param*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rtprio*) ; 

int
FUNC2(lwpid_t lwpid, int *policy, struct sched_param *param)
{
	struct rtprio rtp;
	int ret;

	ret = FUNC1(RTP_LOOKUP, lwpid, &rtp);
	if (ret == -1)
		return (ret);
	FUNC0(&rtp, policy, param);
	return (0);
}