#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  direction; } ;
struct TYPE_5__ {TYPE_1__ rule; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCADDRULE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  PF_RULESET_FILTER ; 
 int /*<<< orphan*/  dev ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__ pfr ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*,struct sockaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(u_int32_t id, u_int8_t dir, struct sockaddr *src,
    struct sockaddr *dst, u_int16_t d_port, u_int8_t proto)
{
	if (!src || !dst || !d_port || !proto) {
		errno = EINVAL;
		return (-1);
	}

	if (FUNC1(id, PF_RULESET_FILTER, src, dst, d_port, proto) == -1)
		return (-1);

	pfr.rule.direction = dir;
	if (FUNC0(dev, DIOCADDRULE, &pfr) == -1)
		return (-1);

	return (0);
}