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
struct svc_req {int dummy; } ;
typedef  int /*<<< orphan*/  statstime ;
struct TYPE_2__ {int /*<<< orphan*/  s3; } ;

/* Variables and functions */
 scalar_t__ sincelastreq ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  stat_is_init ; 
 TYPE_1__ stats_all ; 

statstime *
FUNC1(void *argp, struct svc_req *rqstp)
{
    if (! stat_is_init)
        FUNC0();
    sincelastreq = 0;
    return(&stats_all.s3);
}