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
typedef  int /*<<< orphan*/  u_int ;
struct svc_req {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ sincelastreq ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  stat_is_init ; 

u_int *
FUNC2(void *argp, struct svc_req *rqstp)
{
    static u_int have;

    if (! stat_is_init)
        FUNC1();
    sincelastreq = 0;
    have = FUNC0();
	return(&have);
}