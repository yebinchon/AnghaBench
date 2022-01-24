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
typedef  int u_int ;
struct rman {int dummy; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int RF_ACTIVE ; 
#define  SYS_RES_IOPORT 129 
#define  SYS_RES_MEMORY 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int,struct resource*) ; 
 struct rman mem_rman ; 
 int /*<<< orphan*/  FUNC1 (struct resource*) ; 
 struct resource* FUNC2 (struct rman*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*,int) ; 

__attribute__((used)) static struct resource *
FUNC4(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct resource *rv;
	struct rman *rm;
	int needactivate = flags & RF_ACTIVE;

	flags &= ~RF_ACTIVE;

	switch (type) {
	case SYS_RES_MEMORY:
	case SYS_RES_IOPORT:
		rm = &mem_rman;
		break;

	default:
		return (NULL);
	}

	rv = FUNC2(rm, start, end, count, flags, child);
	if (rv == NULL)
		return (NULL);

	FUNC3(rv, *rid);

	if (needactivate) {
		if (FUNC0(child, type, *rid, rv)) {
			FUNC1(rv);
			return (0);
		}
	}

	return (rv);
}