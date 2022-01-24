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
typedef  int uint64_t ;
typedef  int uint16_t ;
struct ibv_device {int /*<<< orphan*/  ibdev_path; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int FUNC2 (char*,char*,int*,int*,int*,int*) ; 

__be64 FUNC3(struct ibv_device *device)
{
	char attr[24];
	uint64_t guid = 0;
	uint16_t parts[4];
	int i;

	if (FUNC1(device->ibdev_path, "node_guid",
				attr, sizeof attr) < 0)
		return 0;

	if (FUNC2(attr, "%hx:%hx:%hx:%hx",
		   parts, parts + 1, parts + 2, parts + 3) != 4)
		return 0;

	for (i = 0; i < 4; ++i)
		guid = (guid << 16) | parts[i];

	return FUNC0(guid);
}