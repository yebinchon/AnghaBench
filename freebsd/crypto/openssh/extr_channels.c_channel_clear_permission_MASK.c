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
typedef  scalar_t__ u_int ;
struct ssh {int dummy; } ;
struct permission {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ssh*,int,int,struct permission***,scalar_t__**) ; 
 struct permission* FUNC1 (struct permission*,scalar_t__,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct ssh *ssh, int who, int where)
{
	struct permission **permp;
	u_int *npermp;

	FUNC0(ssh, who, where, &permp, &npermp);
	*permp = FUNC1(*permp, *npermp, 0, sizeof(**permp));
	*npermp = 0;
}