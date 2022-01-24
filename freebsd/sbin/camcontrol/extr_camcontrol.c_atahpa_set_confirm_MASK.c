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
typedef  int /*<<< orphan*/  u_int64_t ;
struct cam_device {int /*<<< orphan*/  given_unit_number; int /*<<< orphan*/  given_dev_name; int /*<<< orphan*/  dev_unit_num; int /*<<< orphan*/  device_name; } ;
struct ata_params {int dummy; } ;
typedef  int /*<<< orphan*/  str ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_params*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC4(struct cam_device *device, struct ata_params* ident_buf,
		   u_int64_t maxsize, int persist)
{
	FUNC2("\nYou are about to configure HPA to limit the user accessible\n"
	       "sectors to %ju %s on the device:\n%s%d,%s%d: ", maxsize,
	       persist ? "persistently" : "temporarily",
	       device->device_name, device->dev_unit_num,
	       device->given_dev_name, device->given_unit_number);
	FUNC0(ident_buf);

	for(;;) {
		char str[50];
		FUNC2("\nAre you SURE you want to configure HPA? (yes/no) ");

		if (NULL != FUNC1(str, sizeof(str), stdin)) {
			if (0 == FUNC3(str, "yes", 3)) {
				return (1);
			} else if (0 == FUNC3(str, "no", 2)) {
				return (0);
			} else {
				FUNC2("Please answer \"yes\" or "
				       "\"no\"\n");
			}
		}
	}

	/* NOTREACHED */
	return (0);
}