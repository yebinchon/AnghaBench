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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct cam_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,char**,char*) ; 
 int /*<<< orphan*/  optarg ; 
 int FUNC2 (struct cam_device*,int,int,int,int,int,int,int,int,int,int,int*,int /*<<< orphan*/ **) ; 
 int FUNC3 (struct cam_device*,int,int,int,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct cam_device*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static int
FUNC7(struct cam_device *device, int argc, char **argv,
	    char *combinedopt, int task_attr, int retry_count, int timeout,
	    int verbosemode)
{
	int c;
	uint32_t opcode = 0, service_action = 0;
	int td_set = 0, opcode_set = 0, sa_set = 0;
	int show_sa_errors = 1;
	uint32_t valid_len = 0;
	uint8_t *buf = NULL;
	char *endptr;
	int retval = 0;

	while ((c = FUNC1(argc, argv, combinedopt)) != -1) {
		switch (c) {
		case 'N':
			show_sa_errors = 0;
			break;
		case 'o':
			opcode = FUNC5(optarg, &endptr, 0);
			if (*endptr != '\0') {
				FUNC6("Invalid opcode \"%s\", must be a number",
				      optarg);
				retval = 1;
				goto bailout;
			}
			if (opcode > 0xff) {
				FUNC6("Invalid opcode 0x%#x, must be between"
				      "0 and 0xff inclusive", opcode);
				retval = 1;
				goto bailout;
			}
			opcode_set = 1;
			break;
		case 's':
			service_action = FUNC5(optarg, &endptr, 0);
			if (*endptr != '\0') {
				FUNC6("Invalid service action \"%s\", must "
				      "be a number", optarg);
				retval = 1;
				goto bailout;
			}
			if (service_action > 0xffff) {
				FUNC6("Invalid service action 0x%#x, must "
				      "be between 0 and 0xffff inclusive",
				      service_action);
				retval = 1;
			}
			sa_set = 1;
			break;
		case 'T':
			td_set = 1;
			break;
		default:
			break;
		}
	}

	if ((sa_set != 0)
	 && (opcode_set == 0)) {
		FUNC6("You must specify an opcode with -o if a service "
		      "action is given");
		retval = 1;
		goto bailout;
	}
	retval = FUNC2(device, opcode_set, opcode, show_sa_errors,
				sa_set, service_action, td_set, task_attr,
				retry_count, timeout, verbosemode, &valid_len,
				&buf);
	if (retval != 0)
		goto bailout;

	if ((opcode_set != 0)
	 || (sa_set != 0)) {
		retval = FUNC3(device, opcode, sa_set,
					    service_action, buf, valid_len);
	} else {
		retval = FUNC4(device, td_set, buf, valid_len);
	}

bailout:
	FUNC0(buf);

	return (retval);
}