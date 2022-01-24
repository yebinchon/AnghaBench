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
union ibv_gid {int* raw; } ;
typedef  int uint8_t ;
typedef  int uint16_t ;
struct ibv_context {TYPE_1__* device; } ;
struct TYPE_2__ {int /*<<< orphan*/  ibdev_path; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int,int) ; 
 int FUNC2 (char*,char*,int*) ; 

int FUNC3(struct ibv_context *context, uint8_t port_num,
		    int index, union ibv_gid *gid)
{
	char name[24];
	char attr[41];
	uint16_t val;
	int i;

	FUNC1(name, sizeof name, "ports/%d/gids/%d", port_num, index);

	if (FUNC0(context->device->ibdev_path, name,
				attr, sizeof attr) < 0)
		return -1;

	for (i = 0; i < 8; ++i) {
		if (FUNC2(attr + i * 5, "%hx", &val) != 1)
			return -1;
		gid->raw[i * 2    ] = val >> 8;
		gid->raw[i * 2 + 1] = val & 0xff;
	}

	return 0;
}